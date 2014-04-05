# sets parameters of a turtle: col, lty, lwd 
# TODO: chceck correctness of parameters

#' @export
set_param <- function(col = NA, lwd = NA, lty = NA, visible = NA) {
  if(!exists(".turtle_history")) 
    stop("Turtle has not been initiated, please type turtle_init() first")
  if(all(is.na(col), is.na(lwd), is.na(lty), is.na(visible))) 
    stop("You need to give at least one parameter to set: 'col', 'lwd', 'lty', 'visible")

  curN <- .turtle_history$N
  if(!is.na(col)) .turtle_history$moves$col[curN] <<- col
  if(!is.na(lwd)) .turtle_history$moves$lwd[curN] <<- lwd
  if(!is.na(lty)) .turtle_history$moves$lty[curN] <<- lty
  if(!is.na(visible)) .turtle_history$moves$visible[curN] <<- visible  
  
}

#' @export
set_col <- function(col) {
  set_param(col = col)
}

#' @export
set_lwd <- function(lwd) {
  set_param(lwd = lwd)
}

#' @export
set_lty <- function(lty) {
  set_param(lty = lty)
}

#' @export
up <- function() {
  set_param(visible = FALSE)
}

#' @export
down <- function() {
  set_param(visible = TRUE)
}

