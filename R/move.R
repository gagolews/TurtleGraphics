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
#' \code{\link{turtle_option}} function
#' (or if not, use the default options set by \code{turtle_init}).
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
#' @param dist Specifies the distance to make.
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
#' @aliases turtle_move turtle_forward turtle_backward
#' @rdname turtle_move
#' @export
turtle_move <- function(dist=1, direction = c("forward", "backward"))
{
   if (!exists(".turtle_history"))
      stop("Turtle has not been initialized, please call turtle_init() first.")
   
   direction <- match.arg(direction)
   stopifnot(is.numeric(dist), length(dist) == 1, is.finite(dist))
   
   if(dist < 0)
      warning("Negative value of `dist` moves turtle in the opposite direction.")
  
   if (direction == 'backward')
      dist <- -dist

   dist <- dist / 20 # @TODO: remove this magic constant!!!! :(
   
   # current values for .turtle_history
   curX <- .turtle_history$moves$x
   curY <- .turtle_history$moves$y  
   curAng <- .turtle_history$moves$angle  
   curCol <- .turtle_history$col
   curLwd <- .turtle_history$lwd
   curLty <- .turtle_history$lty
   
   
   # new values for turtle history
   newX <- curX + dist * sin(curAng * pi / 180)
   newY <- curY + dist * cos(curAng * pi / 180)
   
   
   
   # case 1
   if(newY>1) {
      if (curAng%%180==0) {
         borX<-newX
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
   else if(newX>1) { # case2
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
   else if (newY<0) { # case 3
   
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
   else if (newX<0) { # case 4
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
   else {# case that turtle is in a frame
      if(.turtle_history$visible){.hide_turtle()}
   
      if(.turtle_history$draw) {
         grid.polygon(c(curX, newX), c(curY, newY),
                   name = "lines", 
                   gp = gpar(col = curCol,
                             lwd = curLwd, 
                             lty = curLty))
      }
      
      if(.turtle_history$visible) {
         .show_turtle(newX, newY, curAng)
      }
   
      # changing .turtle_history
      .turtle_history$moves$x <<- newX
      .turtle_history$moves$y <<- newY
   }
   
   invisible(NULL)
}


#' @rdname turtle_move
#' @export
turtle_forward <- function(dist=1)
{
   turtle_move(dist, 'forward')
}


#' @rdname turtle_move
#' @export
turtle_backward <- function(dist=1)
{
   turtle_move(dist, 'backward')
}
