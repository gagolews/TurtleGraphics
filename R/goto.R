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
#' t.b.d.
#'
#' @description
#' t.b.d.
#' 
#' @details
#' t.b.d.
#'  
#' @param x ..........
#' @param y ........
#'
#' @family TurtleGraphics
#' @rdname turtle_goto
#' @export
turtle_goto <- function(x, y)
{
   stopifnot(is.numeric(x), length(x)==1, is.finite(x))
   stopifnot(is.numeric(y), length(y)==1, is.finite(y))

   .turtle_check()
   
   curX        <- get("x", envir=.turtle_data)
   curY        <- get("y", envir=.turtle_data)
   curAng      <- get("angle", envir=.turtle_data)
   curDraw     <- get("draw", envir=.turtle_data)
   curVisible  <- get("visible", envir=.turtle_data)
   curGp       <- get("gpar_path", envir=.turtle_data)
   curMode     <- get("mode", envir=.turtle_data)
   curWidth    <- get("width", envir=.turtle_data)
   curHeight   <- get("height", envir=.turtle_data)
   
   if (curMode == 'clip' || (x >= 0 && x<= curWidth && y>=0 && y<=curHeight)) {
      .turtle_draw_fromto(curX, curY, x, y, curGp, curDraw, curVisible)      
   }
   else {
      stop('Given cooridnates lie outside the terrarium. :-(')
   }
   invisible(NULL)
}

#' @rdname turtle_goto
#' @export
turtle_setpos <- function(x, y)
{
   stopifnot(is.numeric(x), length(x)==1, is.finite(x))
   stopifnot(is.numeric(y), length(y)==1, is.finite(y))
   
   .turtle_check()
   
   curMode     <- get("mode", envir=.turtle_data)
   curWidth    <- get("width", envir=.turtle_data)
   curHeight   <- get("height", envir=.turtle_data)
   
   
   if (curMode == 'clip' || (x >= 0 && x<= curWidth && y>=0 && y<=curHeight)) {
      assign("x", x, envir=.turtle_data)
      assign("y", y, envir=.turtle_data)
      .turtle_redraw()      
   }
   else {
      stop('Given cooridnates lie outside the terrarium. :-(')
   }
   invisible(NULL)
}

#' @rdname turtle_goto
#' @export
turtle_setangle <- function(angle)
{
   stopifnot(is.numeric(angle), length(angle)==1, is.finite(angle))
   
   .turtle_check()
   assign("angle", angle, envir=.turtle_data)
   .turtle_redraw()      

   invisible(NULL)
}
