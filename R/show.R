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


#' @title Show or Hide the Turtle
#'
#' @description
#' These functions enable or disable displaying the turtle
#' image on the screen.
#' 
#' @details
#' The turtle must be initialized prior to using
#' this function, see \code{\link{turtle_init}}. 
#' 
#' It is recommended to hide the turtle when
#' performing multiple turtle moves, for efficiency reasons.
#'
#' @examples
#' turtle_init()
#' turtle_forward(4)
#' turtle_hide()
#' turtle_left(30)
#' turtle_forward(3)
#' 
#' @family TurtleGraphics
#' @rdname turtle_show
#' @export
turtle_show <- function()
{
   if (!exists(".turtle_history"))
      stop("Turtle has not been initialized, please call turtle_init() first.")
   
   if (!.turtle_history$visible) {
      .show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, 
                .turtle_history$moves$angle)
      .turtle_history$visible <<- TRUE
   }
   else{
      warning("The turtle is already visible")
   }
   
   invisible(NULL)
}


#' @rdname turtle_show
#' @export
turtle_hide <- function()
{
   if (!exists(".turtle_history"))
      stop("Turtle has not been initialized, please call turtle_init() first.")
   
   if (.turtle_history$visible) {
      .hide_turtle()
      .turtle_history$visible <<- FALSE
   }
   else{
      warning("The turtle is already hidden")
   }
   
   invisible(NULL)
}


# This function shall not be exported:
.hide_turtle <- function()
{
   grid.remove("head")
   grid.remove("body")
   grid.remove("leg1")
   grid.remove("leg2")
   grid.remove("leg3")
   grid.remove("leg4")
   invisible(NULL)
}


# This function shall not be exported:
.show_turtle <- function(x, y, angle)
{
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
   grid.circle(x, y, r=0.03,
        gp = gpar(fill = "darkorange4", col = "brown"), name = "body")
   invisible(NULL)
}
