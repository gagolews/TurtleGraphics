#' @rdname set_param
#' @aliases up down set_col set_lty set_lwd
#'
#' @title Setting Parameters of the Turtle
#'
#' @description
#' Sets parameters of the turtle.
#' 
#' \code{up} and \code{down} lifts and drops turtle respectively, so it leaves the trace or not.
#' 
#'   
#' @param col Color of a trace
#' @param lty Line type of the trace
#' @param lwd Line width of the trace
#' @param visible \code{bolean} If trace should be drawn
#' 
#' @details
#' To use, the tutrle must be initiated, see \code{\link{turtle_init}}. 
#' After running any of parameter changing functions, the trace of a turtle changes during the next 
#' \code{\link{move_forward}} usage.
#'
#'
#' @return
#' Opis obiektu, ktory funkcja zwraca.
#'
#' @seealso
#' \code{\link{turtle_init}}, \code{\link{move_forward}}, 
#'
#' @examples
#' turtle_init(10)
#' move_forward(5)
#' up()
#' move_forward(3)
#' down()
#' left(90)
#' move_forward(5)
#' set_param(col = "red", lwd = 3, lty = 2) # col does not work! (TODO)
#' move_forward(5)


# sets parameters of a turtle: col, lty, lwd 
# TODO: chceck correctness of parameters

#' @rdname set_param
#' @export
set_param <- function(col = NA, lwd = NA, lty = NA, draw = NA) {
  if(!exists(".turtle_history")) 
    stop("Turtle has not been initiated, please type turtle_init() first")
  if(all(is.na(col), is.na(lwd), is.na(lty), is.na(draw)))
    stop("You need to give at least one parameter to set: 'col', 'lwd', 'lty', 'visible', 'draw'")
  
  # checking if 'col' parameter is correct
  tryCatch({tmp <- col2rgb(col)},
           error = function(e){
             stop("The parameter 'col' in set_col or set_param should be a correct R color.")
           })
  # checking other parameters
  if(!is.na(lty) & (!is.numeric(lty) | lty < 0)) stop("You gave improper value of 'lty' parameter")
  if(!is.na(lwd) & (!is.numeric(lwd) | lwd < 0)) stop("You gave improper value of 'lwd' parameter")  
  if(!is.logical(draw)) stop("You gave improper value of 'draw' parameter, it shoud be TRUE or FALSE")
  
  if(!is.na(col)) .turtle_history$col <<- col
  if(!is.na(lwd)) .turtle_history$lwd <<- lwd
  if(!is.na(lty)) .turtle_history$lty <<- lty
  if(!is.na(draw)) .turtle_history$draw <<- draw  
  
}

#' @rdname set_param
#' @export
set_col <- function(col) {
  set_param(col = col)
}

#' @rdname set_param
#' @export
set_lwd <- function(lwd) {
  set_param(lwd = lwd)
}

#' @rdname set_param
#' @export
set_lty <- function(lty) {
  set_param(lty = lty)
}

#' @rdname set_param
#' @export
up <- function() {
  set_param(draw = FALSE)
}

#' @rdname set_param
#' @export
down <- function() {
  set_param(draw = TRUE)
}

