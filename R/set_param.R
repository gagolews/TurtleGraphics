# sets parameters of a turtle: col, lty, lwd 
# TODO: chceck correctness of parameters

set_param <- function(col = NA, lwd = NA, lty = NA) {
  if(!exists("turtle_history")) 
    stop("Turtle has not been initiated, please type turtle_init() first")
  if(all(is.na(col), is.na(lwd), is.na(lty))) 
    stop("You need to give at least one parameter to set: 'col', 'lwd', 'lty'")
  
  if(!is.na(col)) turtle_history$moves$col[turtle_history$N] <<- col
  if(!is.na(lwd)) turtle_history$moves$lwd[turtle_history$N] <<- lwd
  if(!is.na(lty)) turtle_history$moves$lty[turtle_history$N] <<- lty
  
}

set_col <- function(col) {
  set_param(col = col)
}

set_lwd <- function(lwd) {
  set_param(lwd = lwd)
}

set_lty <- function(lty) {
  set_param(lty = lty)
}
