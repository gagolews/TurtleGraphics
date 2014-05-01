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


#' @title Read Turtle's Status
#'
#' @description
#' \code{turtle_status()} gives information about the current
#' turtle's position, direction, and on values of display parameters.
#' 
#' @details
#' The turtle must be initialized prior to using
#' this function, see \code{\link{turtle_init}}. 
#' 
#' @return
#' Returns a list with two elements.
#' 
#' @family TurtleGraphics
#' @rdname turtle_status
#' @export
turtle_status <- function()
{
   if (!exists(".turtle_history"))
      stop("Turtle has not been initialized, please call turtle_init() first.")
   
   graph <- data.frame(.turtle_history[1:5])
   rownames(graph) <- "Value"
   move <- unlist(.turtle_history$moves)
   list(Graphical_Parameters=graph, Position=move)
}
