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

#' @rdname turtle_show
#' @export
turtle_hide<-function(){
  if(.turtle_history$visible){
    .hide_turtle()
    .turtle_history$visible <<- FALSE
  }else{
    warning("You cannot hide turtle if it is already hidden")
  }
}

#' @export
.hide_turtle<-function(){
  grid.remove("head")
  grid.remove("body")
  grid.remove("leg1")
  grid.remove("leg2")
  grid.remove("leg3")
  grid.remove("leg4")
  
}
