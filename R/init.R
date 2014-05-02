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
#' After the \code{turtle_init()} function has been called
#' you can e.g. move the turtle with the \code{\link{turtle_forward}}
#' function, turn its direction with \code{\link{turtle_right}}
#' or set display parameters of the turtle trace, 
#' see \code{\link{turtle_param}}. 
#' 
#' @param width ..........
#' @param height ........
#' @param mode .............
#'
#' @family TurtleGraphics
#' @rdname turtle_init
#' @export
turtle_init <- function(width=100, height=100, mode=c('error', 'clip', 'cycle'))
{
   stopifnot(is.numeric(width), length(width) == 1, is.finite(width), width > 0)
   stopifnot(is.numeric(height), length(height) == 1, is.finite(height), height > 0)
   mode <- match.arg(mode)
   
   assign(envir=.turtle_data, "mode",     mode)
   assign(envir=.turtle_data, "width",    width)
   assign(envir=.turtle_data, "height",   height)
   
   .turtle_set_default_params()
   
   
   grid.newpage()
   
   pushViewport(viewport( 
      x=unit(0.5, 'npc'),
      y=unit(0.5, 'npc'),
      w=unit(min(1, width/height), 'snpc'), 
      h=unit(min(1, height/width), 'snpc'),
      clip='on',
      xscale=c(0, width), 
      yscale=c(0, height)  
   ))
   
   grid.rect(0, 0, width, height, c(0, 0), default.units='native',
      gp=gpar(col='gray', lty=3))
   
   .turtle_draw()
   
   invisible(NULL)
}
