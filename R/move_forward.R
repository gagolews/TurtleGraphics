#' @rdname move_forward
#' @aliases move_backward
#'
#' @title Moving a turtle forward or backward.
#'
#' @description
#' Those functions able to move a Turtle. Command \code{move_forward} moves a Turtle in a forward direction, command
#' \code{back_forward} moves a Turtle in a backward direction.
#' 
#' 
#'   
#' @param dist Specifies the range of distance for a Turtle to move. 
#' The default value for both functions is \code{dist = 0.1}.
#' 
#' @details
#' To use, the tutrle must be initiated, see \code{\link{turtle_init}}. 
#' Both, \code{move_forward} and \code{move_backward}, are using parameteres specified in 
#' \code{\link{set_param}} function (or if not, use default parameters from \code{turtle_init}).
#' Also if functio \code{up} or \code{down} were used, route after Turtle is printed or not.
#' Functions \code{move_forward} and \code{move_backward} correspond to \code{\link{show_turtle}}, \code{\link{hide_turtle}}
#' and after proceding his moves a Turtle is shown or not. 
#'
#' @return
#' Nothing is returned. Just the moves of a Turtle are printed in Plots window.
#'
#' @seealso
#' \code{\link{turtle_init}}, \code{\link{up}}, \code{\link{down}}, \code{\link{set_param}},
#' \code{\link{show_turtle}}, \code{\link{hide_turtle}}
#'
#' @examples
#' turtle_init()
#' move_forward(0.2)
#' move_backward(0.1)
#' 
#' #do not work:
#' turtle_init()
#' move_forward(-0.3)
#' move_backward(-0.4)
#' 
#' # longer yourney
#' turtle_init()
#' turn(30, "left")
#' move_forward(2)
#' up()
#' move_forward(1)
#' down()
#' turn(60, "right")
#' move_forward(9)



#' @rdname move_forward
#' @export
move_forward <- function(dist=1){
   if(!exists(".turtle_history")) 
      stop("Turtle has not been initiated, please type turtle_init() first")
   stopifnot(is.numeric(dist) & length(dist) == 1)
   if(dist < 0) warning("Negative value of distance moves turtle in the opposite direction.\n Use move_backward() function.")
   ## not finished yet

   dist <- dist / 20
   
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
   
   # TODO: check if turtle is in the frame otherwise warning 
   # TODO: does not work when visible = F
   
   # case1
   if(newY>1){
      if(curAng%%180==0){borX<-newX}else{
      a <- curY/(curX+newY-newX)
      borX <- (1+a*newX-newY)/a}
      
      distance <- sqrt((borX-newX)^2 + (1-newY)^2)
      
      
      if(.turtle_history$draw)
         grid.polygon(c(curX, newX), c(curY, newY),
                      name = "lines", 
                      gp = gpar(col = curCol,
                                lwd = curLwd, 
                                lty = curLty))
      
      
      
      # changing .turtle_history
      .turtle_history$moves$x <<- borX
      .turtle_history$moves$y <<- 0
      
      move_forward(distance*20)
      
      
   }else{
   # case2
   if(newX>1){
      if(curAng%%90==0){borY<-newY}else{
         a <- curY/(curX+newY-newX)
         borY <- a+newY-a*newX}
      
      
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
      
      move_forward(distance*20)
      
      
   }else{
   # case3
   if(newY<0){
      if(curAng%%180==0){borX<-newX}else{
         a <- curY/(curX+newY-newX)
         borX <- (a*newX-newY)/a}
           
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
      
      move_forward(distance*20)
      
      
   }else{
   # case4
   if(newX<0){
      if(curAng%%90==0){borY<-newY}else{
         a <- curY/(curX+newY-newX)
         borY <- newY-a*newX}
      
      
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
      
      move_forward(distance*20)
      
      
   }else{   
      
   # case that turtle is in a frame
      if(.turtle_history$visible){hide_turtle()}
   
   if(.turtle_history$draw){
      grid.polygon(c(curX, newX), c(curY, newY),
                   name = "lines", 
                   gp = gpar(col = curCol,
                             lwd = curLwd, 
                             lty = curLty))}
   if(.turtle_history$visible){
      show_turtle(newX, newY, curAng)}
   
   # changing .turtle_history
   .turtle_history$moves$x <<- newX
   .turtle_history$moves$y <<- newY
}
}
}
}
}
#' @rdname move_forward
#' @export

move_backward <- function(dist=1){
   if(!exists(".turtle_history")) 
      stop("Turtle has not been initiated, please type turtle_init() first")
   stopifnot(is.numeric(dist) & length(dist) == 1)
   if(dist < 0) warning("Negative value of distance moves turtle in the opposite direction. \n Use move_forward() function.")
   ## not finished yet
}



