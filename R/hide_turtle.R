#' @title Function that hide the turtle image.
#'
#' @description
#' hiding turtle image
#'
#' @export
#'
hide_turtle<-function(){
  grid.remove("head")
  grid.remove("body")
  grid.remove("leg1")
  grid.remove("leg2")
  grid.remove("leg3")
  grid.remove("leg4")
  
}
