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
  grid.circle(x + 0.03 * sin(angle * pi / 180), y + 0.03 * cos(angle * pi / 180),  
              gp = gpar(fill = "brown", col = "brown"), r=0.015, name = "head")
  grid.circle(x + 0.03 * sin(angle * pi / 180 + pi/3), y + 0.03 * cos(angle * pi / 180 + pi/3),  
              gp = gpar(fill = "brown", col = "brown"), r=0.01, name = "leg1")
  grid.circle(x + 0.03 * sin(angle * pi / 180 - pi/3), y + 0.03 * cos(angle * pi / 180 - pi/3),  
              gp = gpar(fill = "brown", col = "brown"), r=0.01, name = "leg2")
  grid.circle(x + 0.03 * sin(angle * pi / 180 + 2*pi/3), y + 0.03 * cos(angle * pi / 180 + 2*pi/3),  
              gp = gpar(fill = "brown", col = "brown"), r=0.01, name = "leg3")
  grid.circle(x + 0.03 * sin(angle * pi / 180 - 2*pi/3), y + 0.03 * cos(angle * pi / 180 - 2*pi/3),  
              gp = gpar(fill = "brown", col = "brown"), r=0.01, name = "leg4")
  grid.circle(x, y, r=0.03, gp = gpar(fill = "brown", col = "brown"), name = "body")
  
}

