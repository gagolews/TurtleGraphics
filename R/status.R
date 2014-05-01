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

#' @rdname turtle_status
#' @title Turtle Position Status
#'
#' @description
#' \code{turtle_status()} gives information about current Turtle position and 
#' values of graphical parameters.
#' 
#' @details
#' \code{turtle_status()} returns two element list describing graphical parameters valus and
#' Turtle current position.

#' @export
turtle_status<-function(){
  graph<-data.frame(.turtle_history[1:5])
  rownames(graph) <- "Value"
  move <- unlist(.turtle_history$moves)
  list(Graphical_Parameters=graph, Position=move)
}