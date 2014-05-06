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
#' Evaluate a Turtle expresion 
#'
#' @description
#' \code{turtle_do} evaluate a given expression
#' 
#' @param expr  expresion to evaluate
#'  
#' @details
#' The terrarium must be initialized prior to using
#' these functions, see \code{\link{turtle_init}}.
#' 
#' \code{turtle_do} evaluate a given expresion with hidden Turtle, which 
#' increase the rate in case of complicated ...   
#' 
#'    
#' @examples
#' turtle_init()
#' turtle_do(expr = {
#'    turtle_move(100)
#'    turtle_turn(45)
#'    turtle_move(100)
#' })
#' 
#' @family TurtleGraphics
#' @rdname turtle_do
#' @export
turtle_do <- function(expr){
   .turtle_check()
   curVisible <- get("visible", envir=.turtle_data)
   if (curVisible)
      turtle_hide()
   
   eval(substitute(expr), enclos = parent.frame())
   
   if (curVisible)
      turtle_show()
   invisible(NULL)
}
   
   