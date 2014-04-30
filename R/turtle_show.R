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

#' @rdname turtle_show
#' @title Show Turtle Image
#'
#' @description
#' 
#' \code{turtle_show()} function enable the turtle image be displayed while the path is drawn.
#' \code{turtle_hide()} function unable the turtle image be displayed while the path is drawn.
#' 
#' @details
#' To use \code{turtle_hide()} the turtle must be initiated, see \code{\link{turtle_init}}.
#' Please note, that after \code{turtle_hide()} was called the turtle image will not be visible 
#' during next moves, untli \code{\link{turtle_show}} will be used.
#' 
#' @seealso
#' \code{\link{turtle_init}}, \code{\link{move_forward}}, \code{\link{turn}}
#'
#' @examples
#' turtle_init()
#' move_forward(4)
#' turtle_hide()
#' left(30)
#' move_forward(3)
#' 

#' @export
turtle_show<-function(){
  if(!.turtle_history$visible){
    .show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, 
                .turtle_history$moves$angle)
    .turtle_history$visible <<- TRUE
  }else{
    warning("You cannot show turtle if it is already visible")
  }
}

#' @export
.show_turtle<-function(x, y, angle){
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
