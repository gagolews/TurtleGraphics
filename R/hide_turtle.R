#' @rdname hide
#' @aliases hide_turtle
#' @title Hide Turtle Image
#'
#' @description
#' \code{hide()} function makes Turtle image invisible while the path is drawn.
#' 
#' @details
#' To use turn, the tutrle must be initiated, see \code{\link{turtle_init}}. 
#' While Turtle has been hiden, the \code{show()} function should be used to 
#' display the Turtle image. 
#'
#' @seealso
#' \code{\link{show}} 
#'
#' @rdname hide
#' @export
hide<-function(){
  hide_turtle()
  .turtle_history$visible <<- FALSE
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
