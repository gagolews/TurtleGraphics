#' @rdname move_forward
#' @aliases move_backward
#'
#' @title Moving a turtle forward or backward.
#'
#' @description
#' Those functions ables to move a Turtle. \code{move_forward} moves a Turtle in a forward direction, 
#' \code{back_forward} moves a Turtle in a backward direction,
#' 
#' 
#'   
#' @param dist Specifies the range of distance for a Turtle to move.
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
#' #also works:
#' turtle_init()
#' move_forward(-0.3)
#' move_backward(-0.4)
#' 
#' # longer yourney
#' turtle_init()
#' turn(30, "left")
#' move_forward(0.2)
#' up()
#' move_forward(0.1)
#' down()
#' turn(60, "right")
#' move_forwar(0.9)



#' @rdname move_forward
#' @export
move_forward <- function(dist=){
   
}

move_backward <- function(dist=){
   
}