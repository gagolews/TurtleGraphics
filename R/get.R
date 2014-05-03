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
#' Get a Turtle's position and direction
#'
#' @description
#' \code{turtle_getpos} returns a Turtle's current position
#' 
#' \code{turtle_getangle} returns a Turtle's current direction 
#' 
#' @details
#' The Turtle must be initialized prior to using
#' \code{turtle_getpos} and \code{turtle_getangle}, 
#' see \code{\link{turtle_init}}.
#' 
#' The \code{turtle_getpos} returns a vector of length two which
#' specifies the \code{x} and \code{y} coordinates.
#' The \code{turtle_getangle} returns the \code{angle} in which Turtle is rotated.
#'    
#' @family TurtleGraphics
#' @rdname turtle_getpos
#' @export
turtle_getpos <- function()
{
   .turtle_check()
   c(x=get("x", envir=.turtle_data),
     y=get("y", envir=.turtle_data))
}

#' @rdname turtle_getpos
#' @export
turtle_getangle <- function()
{
   .turtle_check()
   c(angle=get("angle", envir=.turtle_data))
}
