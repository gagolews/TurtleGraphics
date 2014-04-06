#' @rdname forward_tmp
#' 
#' @title Temporary forward
#' 
#' @export
forward_tmp <- function(moves = 1){
  moves <- moves / 20
  
  # current values for .turtle_history
  curX <- .turtle_history$moves$x
  curY <- .turtle_history$moves$y  
  curAng <- .turtle_history$moves$angle  
  curCol <- .turtle_history$col
  curLwd <- .turtle_history$lwd
  curLty <- .turtle_history$lty
  
  # new values for turtle history
  newX <- curX + moves * sin(curAng * pi / 180)
  newY <- curY + moves * cos(curAng * pi / 180)
  
  # TODO: check if turtle is in the frame otherwise warning 
  # TODO: does not work when visible = F
  
  hide_turtle()
  if(.turtle_history$draw)
    grid.polygon(c(curX, newX), c(curY, newY),
                 name = "lines", 
                 gp = gpar(col = curCol,
                           lwd = curLwd, 
                           lty = curLty))
  show_turtle(newX, newY, curAng)
  
  # changing .turtle_history
  .turtle_history$moves$x <<- newX
  .turtle_history$moves$y <<- newY
}
