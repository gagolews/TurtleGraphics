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


#' @title
#' Set Up a New, Shiny Terrarium
#'
#' @description
#' This function creates a new empty plot
#' with the turtle centered on the board and facing to the north.
#' 
#' @details
#' After the \code{turtle_init()} function was called
#' you can e.g. move the turtle with the \code{\link{turtle_forward}}
#' function, turn its direction with \code{\link{turtle_right}}
#' or set display parameters of the turtle trace, 
#' see \code{\link{turtle_option}}. 
#'
#' @family TurtleGraphics
#' @rdname turtle_init
#' @export
turtle_init <- function()
{
   # @TODO: this is a gloval env-variable
   # it should be a variable in the package's namespace:
  .turtle_history <<- list(col = "black",
                           lty = 1,
                           lwd = 1,
                           visible = TRUE,
                           draw = T,
                           moves = list(x = 0.5, 
                                        y = 0.5,
                                        angle = 0))
   
   # @TODO: http://stackoverflow.com/questions/23404270/preserving-aspect-ratio-in-rs-grid-graphics
   grid.newpage()
   
   .show_turtle(.turtle_history$moves$x, .turtle_history$moves$y,
     .turtle_history$moves$angle)
   
   invisible(NULL)
}

