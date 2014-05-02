##    TurtleGraphics package for R
##    Copyright (C) 2014 Rexamine
##
##    This program is free software: you can redistribute it and/or modify
##    it under the terms of the GNU General Public License as published by
##    the Free Software Foundation, either version 3 of the License, or
##    (at your option) any later version.
##
##    This program is distributed in the hope that it will be useful,
##    but WITHOUT ANY WARRANTY; without even the implied warranty of
##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##    GNU General Public License for more details.
##
##    You should have received a copy of the GNU General Public License
##    along with this program.  If not, see <http://www.gnu.org/licenses/>.


#' @title Move a Turtle forward or backward
#'
#' @description
#' \code{move_forward} moves a Turtle in a forward direction, and
#' \code{back_forward} moves a Turtle in a backward direction.
#' 
#' 
#' @details
#' The turtle must be initialized prior to using
#' this function, see \code{\link{turtle_init}}. 
#' 
#' These functions make use of the turtle's display options specified by
#' \code{\link{turtle_param}} function
#' (or if not, use the default options set by \code{\link{turtle_init}}).
#' 
#' Note that if function \code{\link{turtle_up}} or \code{\link{turtle_down}}
#' was called, the Turtle's route will be drawn or not drawn, respectively.
#' 
#' If you are willing to call these functions in an R loop,
#' you may want to hide the turtle (see \code{\link{turtle_hide}})
#' befor making actual moves. This will increase the drawing performance
#' significantly.
#' 
#' 
#' @param distance Specifies the distance to make.
#'        Negative distance results in moving in the opposite direction.
#' @param direction Moving direction.
#'        One of \code{"forward"} or \code{"backward"}.
#' 
#'
#'
#' @examples
#' turtle_init()
#' turtle_left(30)
#' turtle_forward(2)
#' turtle_up()
#' turtle_forward(1)
#' turtle_down()
#' turtle_right(60)
#' turtle_forward(9)
#' 
#' @family TurtleGraphics
#' @rdname turtle_move
#' @export
turtle_move <- function(distance, direction = c("forward", "backward"))
{
   .turtle_check()
   
   direction <- match.arg(direction)
   stopifnot(is.numeric(distance), length(distance) == 1, is.finite(distance))
   
   if (distance < 0)
      warning("Negative value of `distance` moves the turtle in the opposite direction.")
  
   if (direction == 'backward')
      distance <- -distance
   
   # current values for .turtle_history
   curX        <- get("x", envir=.turtle_data)
   curY        <- get("y", envir=.turtle_data)
   curAng      <- get("angle", envir=.turtle_data)
   curGp       <- get("gpar_path", envir=.turtle_data)
   curDraw     <- get("draw", envir=.turtle_data)
   curMode     <- get("mode", envir=.turtle_data)
   curWidth    <- get("width", envir=.turtle_data)
   curHeight   <- get("height", envir=.turtle_data)
   curVisible  <- get("visible", envir=.turtle_data)
   
   if (curMode == 'error')
      .turtle_draw_error(distance, curX, curY, curAng, curGp, curDraw,
         curWidth, curHeight, curVisible)
   else if (curMode == 'clip')
      .turtle_draw_clip(distance, curX, curY, curAng, curGp, curDraw,
         curWidth, curHeight, curVisible)
   else
      .turtle_draw_cycle(distance, curX, curY, curAng, curGp, curDraw,
         curWidth, curHeight, curVisible)
   
   invisible(NULL)
}


#' @rdname turtle_move
#' @export
turtle_forward <- function(distance)
{
   turtle_move(distance, 'forward')
}


#' @rdname turtle_move
#' @export
turtle_backward <- function(distance)
{
   turtle_move(distance, 'backward')
}


# This function shall not be exported:
.turtle_draw_fromto <- function(curX, curY, newX, newY, curGp, curDraw, curVisible)
{
   if (curVisible) .turtle_undraw()
   
   if (curDraw) {
      grid.lines(c(curX, newX), c(curY, newY), 
         gp = curGp, default.units='native')
   }
   
   assign("x", newX, envir=.turtle_data)
   assign("y", newY, envir=.turtle_data)
   
   if (curVisible) .turtle_draw()
}


# This function shall not be exported:
.turtle_draw_error <- function(distance, curX, curY, curAng, curGp, curDraw,
         curWidth, curHeight, curVisible)
{
   newX <- curX + distance * sin(curAng * pi / 180)
   newY <- curY + distance * cos(curAng * pi / 180)
   
   if (newY > curHeight || newY < 0 || newX > curWidth || newX < 0)
      stop("The turtle escaped from the terrarium. :-(")
   
   .turtle_draw_fromto(curX, curY, newX, newY, curGp, curDraw, curVisible)
}


# This function shall not be exported:
.turtle_draw_clip <- function(distance, curX, curY, curAng, curGp, curDraw,
         curWidth, curHeight, curVisible)
{
   # new position
   newX <- curX + distance * sin(curAng * pi / 180)
   newY <- curY + distance * cos(curAng * pi / 180)
   
   .turtle_draw_fromto(curX, curY, newX, newY, curGp, curDraw, curVisible)
}


# This function shall not be exported:
.turtle_draw_cycle <- function(distance, curX, curY, curAng, curGp, curDraw,
         curWidth, curHeight, curVisible)
{
   newX <- curX + distance * sin(curAng * pi / 180)
   newY <- curY + distance * cos(curAng * pi / 180)
   
   stop("TO DO")
   
   # case 1
   if (newY > curHeight) { # the turtle goes too far to the north
      if (curAng %% 180 == 0) {
         borX <- newX
      }
      else {
         a <- (newY-curY)/(newX-curX)
         borX <- (1+a*newX-newY)/a
      }
      
      distance <- sqrt((borX-newX)^2 + (1-newY)^2)
   
   
      if(.turtle_history$draw) {
         grid.polygon(c(curX, newX), c(curY, newY),
                   name = "lines", 
                   gp = gpar(col = curCol,
                             lwd = curLwd, 
                             lty = curLty))
      }
   
   
      # changing .turtle_history
      .turtle_history$moves$x <<- borX
      .turtle_history$moves$y <<- 0
   
      turtle_move(distance*20, 'forward')
   }
   else if (newX > curWidth) { # the turtle goes too far to the east
      if(curAng%%90==0){
         borY<-newY
      }
      else {
         a <- (newY-curY)/(newX-curX)
         borY <- a+newY-a*newX
      }
      
      distance <- sqrt((1-newX)^2 + (borY-newY)^2)
      
      if(.turtle_history$draw)
         grid.polygon(c(curX, newX), c(curY, newY),
                      name = "lines", 
                      gp = gpar(col = curCol,
                                lwd = curLwd, 
                                lty = curLty))
      
      
      
      # changing .turtle_history
      .turtle_history$moves$x <<- 0
      .turtle_history$moves$y <<- borY
      
      turtle_move(distance*20, 'forward')
      
   }
   else if (newY < 0) { # the turtle goes too far to the south
   
      if(curAng%%180==0){
         borX<-newX
      }
      else {
         a <- (newY-curY)/(newX-curX)
         borX <- (a*newX-newY)/a
      }
           
      distance <- sqrt((borX-newX)^2 + (newY)^2)
      
     
      if(.turtle_history$draw)
         grid.polygon(c(curX, newX), c(curY, newY),
                      name = "lines", 
                      gp = gpar(col = curCol,
                                lwd = curLwd, 
                                lty = curLty))
      
      
      
      # changing .turtle_history
      .turtle_history$moves$x <<- borX
      .turtle_history$moves$y <<- 1
      
      turtle_move(distance*20, 'forward')
   }
   else if (newX < 0) { # the turtle goes too far to the west
      if (curAng%%90==0) {
         borY<-newY
      }
      else {
         a <- (newY-curY)/(newX-curX)
         borY <- newY-a*newX
      }
      
      distance <- sqrt((newX)^2 + (borY-newY)^2)
      
      if(.turtle_history$draw)
         grid.polygon(c(curX, newX), c(curY, newY),
                      name = "lines", 
                      gp = gpar(col = curCol,
                                lwd = curLwd, 
                                lty = curLty))
      
      # changing .turtle_history
      .turtle_history$moves$x <<- 1
      .turtle_history$moves$y <<- borY
      
      turtle_move(distance*20, 'forward')
   }
   else { # the turtle "fits" in the terrarium
      .turtle_draw_fromto(curX, curY, newX, newY, curGp, curDraw, curVisible)
   }
}
