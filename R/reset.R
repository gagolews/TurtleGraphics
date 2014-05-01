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


#' @title Reset the Turtle's Position and Direction
#'
#' @description
#' This function resets the turtle's position and direction.
#' After a call to this function, the turtle will be situated
#' in the terrarium's center and it will be directed
#' to the north.
#' 
#' @details
#' The turtle must be initialized prior to using
#' this function, see \code{\link{turtle_init}}. 
#' 
#' All the graphical parameters are left unchanged after calling
#' this function, see \code{\link{turtle_param}}.
#' 
#' 
#' @examples
#' turtle_init()
#' turtle_forward(4)
#' turtle_param(col="red", lty=2, lwd=3)
#' turtle_reset()
#' turtle_left(45)
#' turtle_forward(3)
#' 
#' @family TurtleGraphics
#' @export
#' @rdname turtle_reset
turtle_reset <- function()
{
   if (!exists(".turtle_history"))
      stop("Turtle has not been initialized, please call turtle_init() first.")
   
  .turtle_history$moves$x <<- 0.5
  .turtle_history$moves$y <<- 0.5
  .turtle_history$moves$angle <<- 0
  
  .hide_turtle()
  .show_turtle(.turtle_history$moves$x, .turtle_history$moves$y,
     .turtle_history$moves$angle)
   
   invisible(NULL)
} 
