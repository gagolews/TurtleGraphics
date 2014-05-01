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


#' @title Set Display Options
#'
#' @description
#' Sets the display options for the turtle's trace.
#' It is possible to change its color, line type, 
#' line width or whether the turtle is drawn or not.
#' 
#'   
#' @param col  numeric or character; Trace color
#' @param lty  numeric;  Trace line type
#' @param lwd  numeric;  Trace line width
#' @param draw logical;  Determines whether a trace should be drawn at all
#' 
#' @details
#' The turtle must be initialized prior to using
#' this function, see \code{\link{turtle_init}}. 
#' 
#' After running any of the parameter changing functions, the trace of a turtle changes during the next 
#' \code{\link{move_forward}} usage.
#' 
#' \code{up} and \code{down} lifts and drops the turtle respectively, so it leaves the trace or not.
#' 
#' @examples
#' turtle_init()
#' turtle_forward(5)
#' turtle_up()
#' turtle_forward(3)
#' turtle_down()
#' turtle_left(90)
#' turtle_forward(5)
#' turtle_option(col = "red", lwd = 2, lty = 2)
#' turtle_forward(5)
#' 
#' @family TurtleGraphics
#' @aliases turtle_option turtle_up turtle_down turtle_lty turtle_draw
#'          turtle_lwd turtle_col
#' @rdname turtle_option
#' @export
turtle_option <- function(col=NULL, lwd=NULL, lty=NULL, draw=NULL)
{
   if (!exists(".turtle_history"))
      stop("Turtle has not been initialized, please call turtle_init() first.")
   
   if (all(is.null(col), is.null(lwd), is.null(lty), is.null(draw)))
      stop("You need to provide at least one of: `col`, `lwd`, `lty`, `draw`.")
   
   if (!is.null(col)) {
      tryCatch({
         tmp <- col2rgb(col)
      },
      error = function(e) {
         stop("The `col` argument should indicate a correct color specifier.")
      })
      
      .turtle_history$col <<- col
   }
   
   if (!is.null(lty)) {
      stopifnot(is.numeric(lty), length(lty) == 1, is.finite(lty), lty > 0)
      .turtle_history$lty <<- lty
   }
   
   if (!is.null(lwd)) {
      stopifnot(is.numeric(lwd), length(lwd) == 1, is.finite(lwd), lwd > 0)
      .turtle_history$lwd <<- lwd
   }
      
   if (!is.null(draw)) {
      stopifnot(is.logical(draw), length(draw) == 1, !is.na(draw))
      .turtle_history$draw <<- draw  
   }
  
   invisible(NULL)
}


#' @rdname turtle_option
#' @export
turtle_col <- function(col)
{
   turtle_option(col = col)
}


#' @rdname turtle_option
#' @export
turtle_lwd <- function(lwd)
{
   turtle_option(lwd = lwd)
}


#' @rdname turtle_option
#' @export
turtle_lty <- function(lty)
{
   turtle_option(lty = lty)
}


#' @rdname turtle_option
#' @export
turtle_up <- function()
{
   turtle_option(draw = FALSE)
}


#' @rdname turtle_option
#' @export
turtle_down <- function()
{
   turtle_option(draw = TRUE)
}


#' @rdname turtle_option
#' @export
turtle_draw <- function(draw)
{
   turtle_option(draw = draw)
}

