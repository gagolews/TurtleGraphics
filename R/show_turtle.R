#' @rdname show
#' @title Show Turtle Image
#'
#' @description
#' 
#' \code{show()} function make Turtle image be displayed while the path is drawn.
#' \code{show_turtle(x, y, angle)} function display the image of the Turtle in a
#' position given by x, y, angle cooridnates. This function is inner function.   
#' 
#' @param x,y Coordinates describing the Turtle position in the picture
#' @param angle Angle of turn in degrees. If negative the turtle turn in the opposite direction than the given direction
#' 
#' @details
#' To use turn, the tutrle must be initiated, see \code{\link{turtle_init}}. 
#'
#' @rdname show
#' @export
show<-function(){
  show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, 
              .turtle_history$moves$angle)
  .turtle_history$visible <<- TRUE
}

#' @rdname show
#' @export
show_turtle<-function(x, y, angle){
  ang <- angle * pi / 180
  grid.circle(x + 0.03 * sin(ang), y + 0.03 * cos(ang),  
              gp = gpar(fill = "darkorange3", col = "brown"), r=0.015, name = "head")
  grid.circle(x + 0.03 * sin(ang + pi/3), y + 0.03 * cos(ang + pi/3),  
              gp = gpar(fill = "darkorange3", col = "brown"), r=0.01, name = "leg1")
  grid.circle(x + 0.03 * sin(ang - pi/3), y + 0.03 * cos(ang - pi/3),  
              gp = gpar(fill = "darkorange3", col = "brown"), r=0.01, name = "leg2")
  grid.circle(x + 0.03 * sin(ang + 2*pi/3), y + 0.03 * cos(ang + 2*pi/3),  
              gp = gpar(fill = "darkorange3", col = "brown"), r=0.01, name = "leg3")
  grid.circle(x + 0.03 * sin(ang - 2*pi/3), y + 0.03 * cos(ang - 2*pi/3),  
              gp = gpar(fill = "darkorange3", col = "brown"), r=0.01, name = "leg4")
  grid.circle(x, y, r=0.03, gp = gpar(fill = "darkorange4", col = "brown"), name = "body")
  
}
