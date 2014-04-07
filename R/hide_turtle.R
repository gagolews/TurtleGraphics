#' @rdname hide
#' @aliases hide_turtle
#' @title Hide Turtle Image
#'
#' @description
#' \code{hide()} function disable the turtle image from being displayed 
#' while the path is drawn.
#' 
#' @details
#' To use \code{hide()} the turtle must be initiated, see \code{\link{turtle_init}}.
#' Please note, that after \code{hide()} was called the turtle image will not be visible 
#' during next moves, untli \code{\link{show}} will be used.
#'  
#' @seealso
#' \code{\link{show}}, \code{\link{move_forward}}, \code{\link{turn}}
#'
#' @examples
#' turtle_init()
#' move_forward(4)
#' hide()
#' left(30)
#' move_forward(3)
#' 
#' @rdname hide
#' @export
hide<-function(){
  if(.turtle_history$visible){
    hide_turtle()
    .turtle_history$visible <<- FALSE
  }else{
    warning("You cannot hide turtle if it is already hidden")
  }
}

#' @rdname hide
#' @export
hide_turtle<-function(){
  grid.remove("head")
  grid.remove("body")
  grid.remove("leg1")
  grid.remove("leg2")
  grid.remove("leg3")
  grid.remove("leg4")
  
}
