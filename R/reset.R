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


#' @rdname reset
#' @title Clear the Plot Region
#'
#' @description
#' \code{reset()} function moves the turtle to the start point without clearing the plot region.
#' 
#' @details
#' Please note that \code{reset} function do not change the graphical parameters - they stay 
#' unchaned from the last time \code{set_param} was called.
#' To use \code{reset}, the tutrle must be initiated, see \code{\link{turtle_init}}. 
#' 
#' @seealso
#' \code{\link{set_param}}
#' 
#' @examples
#' turtle_init()
#' move_forward(4)
#' set_param(col="red", lty=2, lwd=3)
#' reset()
#' left(45)
#' move_forward(3)
#' @export
reset <- function(){
  
  .turtle_history$moves$x <<- 0.5
  .turtle_history$moves$y <<- 0.5
  .turtle_history$moves$angle <<- 0
  
  .hide_turtle()
  .show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, .turtle_history$moves$angle)
} 
