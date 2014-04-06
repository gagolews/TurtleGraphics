#' @rdname set_param
#' @aliases up down set_col set_lty set_lwd
#'
#' @title Setting Parameters of the Turtle Trace
#'
#' @description
#' Sets parameters of the turtle trace. It is possible to change its color, line type, 
#' line width or if should be drawn or not. To change each of the parameters more easily 
#' \code{set_lwd}, \code{set_lty}, \code{set_col}, \code{up} and \code{down} are also availabale.
#' 
#'   
#' @param col  Color of a trace, should be the correct R color
#' @param lty \code{numeric}  Line type of a trace
#' @param lwd \code{numeric}  Line width of a trace
#' @param visible \code{bolean}  If a trace should be drawn
#' 
#' @details
#' To use, the tutrle must be initiated, see \code{\link{turtle_init}}. 
#' After running any of the parameter changing functions, the trace of a turtle changes during the next 
#' \code{\link{move_forward}} usage.
#' 
#' \code{up} and \code{down} lifts and drops the turtle respectively, so it leaves the trace or not.
#' 
#'
#' @seealso
#' \code{\link{turtle_init}}, \code{\link{move_forward}}, \code{\link{turn}}
#'
#' @examples
#' turtle_init(10)
#' move_forward(5)
#' up()
#' move_forward(3)
#' down()
#' left(90)
#' move_forward(5)
#' set_param(col = "red", lwd = 2, lty = 2)
#' move_forward(5)

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

