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


#' @rdname turtle_init
#' @title Starting the Turtle Program
#'
#' @description
#' \code{turtle_init()} function create an empty page with the turtle image displayed in the 
#' center.  
#' 
#' @details
#' After \code{turtle_init()} was called you can move the turtle with \code{\link{move_forward}} 
#' or \code{\link{move_backward}} functions, turn its direction with
#' \code{\link{turn}} or set graphical parameters of the turtle trace, 
#' see \code{\link{set_param}}. 
#'
#' @export
turtle_init<- function(){
  .turtle_history <<- list(col = "black",
                           lty = 1,
                           lwd = 1,
                           visible = TRUE,
                           draw = T,
                           moves = list(x = 0.5, 
                                        y = 0.5,
                                        angle = 0))
  grid.newpage()
  .show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, .turtle_history$moves$angle)
}

