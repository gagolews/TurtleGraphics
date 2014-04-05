#' @title Function that hide the turtle image.
#'
#' @description
#' hiding turtle image
#' @rdname hide
#' @export
#'
hide<-function(){
  n <- .turtle_history$N
  hide_turtle()
  .turtle_history$moves$visible[n:nrow(.turtle_history$moves)]<<-FALSE
}
#'
#' @rdname hide
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
