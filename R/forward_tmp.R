#' @rdname forward_tmp
#' 
#' @title Temporary forward
#' 
#' @export
forward_tmp <- function(moves = 1){
  moves <- moves / 20
  
  # current values for .turtle_history
  curN <- .turtle_history$N
  curX <- .turtle_history$moves$x[curN]
  curY <- .turtle_history$moves$y[curN]  
  curAng <- .turtle_history$moves$angle[curN]  
  curCol <- .turtle_history$col
  curLwd <- .turtle_history$moves$lwd[curN]
  curLty <- .turtle_history$moves$lty[curN]
  
  # new values for turtle history
  newN <- curN %% nrow(.turtle_history$moves) + 1
  newX <- curX + moves * sin(curAng * pi / 180)
  newY <- curY + moves * cos(curAng * pi / 180)
  
  # TODO: check if turtle is in the frame otherwise warning 
  # TODO: does not work when visible = F
  
  hide_turtle()
  if(.turtle_history$moves$draw[curN])
    grid.polygon(c(curX, newX), c(curY, newY),
                 name = "lines", 
                 gp = gpar(col = curCol,
                           lwd = curLwd, 
                           lty = curLty))
  show_turtle(newX, newY, curAng)
  
  # changing .turtle_history
  .turtle_history$N <<- newN
  .turtle_history$moves[newN, ] <<- .turtle_history$moves[curN, ]
  .turtle_history$moves$x[newN] <<- newX
  .turtle_history$moves$y[newN] <<- newY
}
