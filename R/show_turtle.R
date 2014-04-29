##    TurtleGraphics package for R
##    Copyright (C) 2014 Rexamine
##
##    This program is free software: you can redistribute it and/or modify
##    it under the terms of the GNU General Public License as published by
##    the Free Software Foundation, either version 3 of the License, or
##    (at your option) any later version.
##
##    This program is distributed in the hope that it will be useful,
##    but WITHOUT ANY WARRANTY; without even the implied warranty of
##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##    GNU General Public License for more details.
##
##    You should have received a copy of the GNU General Public License
##    along with this program.  If not, see <http://www.gnu.org/licenses/>.


#' @rdname show
#' @aliases show_turtle
#' @title Show Turtle Image
#'
#' @description
#' 
#' \code{show()} function enable the turtle image be displayed while the path is drawn.
#' \code{show_turtle(x, y, angle)} function display the image of the Turtle in a
#' position given by x, y, angle cooridnates.   
#' 
#' @param x,y Coordinates describing the turtle position in the picture
#' @param angle Angle of turn in degrees. 
#' 
#' @details
#' The main difference between \code{show} and \code{show_turtle} is that the first one 
#' display the turtle in the position set by previous usage of \code{move_forward},
#' \code{move_backward} and \code{turn} functions, while the second one allows you to create 
#' many turtle images in any location. Please note that to use both of them, the turtle 
#' must be initiated, see \code{\link{turtle_init}}.
#' 
#' @seealso
#' \code{\link{hide}}, \code{\link{move_forward}}, \code{\link{turn}}
#'
#' @examples
#' turtle_init()
#' move_forward(4)
#' hide()
#' left(30)
#' move_forward(3)
#' show()
#' 
#' @rdname show
#' @export
show<-function(){
  if(!.turtle_history$visible){
    show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, 
                .turtle_history$moves$angle)
    .turtle_history$visible <<- TRUE
  }else{
    warning("You cannot show turtle if it is already visible")
  }
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
