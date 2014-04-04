#' @title Function that show the turtle image.
#'
#' @description
#' showing turtle
#'
#' @param coordinates of a turtle
#'
#' @export
#'
show_turtle<-function(x, y, angle){
  grid.circle(x + 0.03 * sin(angle * pi / 180), y + 0.03 * cos(angle * pi / 180), r=0.015, name = "head")
  grid.circle(x, y, r=0.03, name = "body")
  
}

