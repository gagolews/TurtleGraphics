#' @rdname turn
#' @aliases left right
#'
#' @title Turn Turtle
#'
#' @description
#' Turn turtle by the given angle in degrees and in the given one.
#' 
#' \code{left} and \code{right} turn turtle to left or right by the given angle.
#' 
#'   
#' @param angle Angle of turn in degrees. If negative the turtle turn in the opposite direction than the given direction
#' @param direction Direction of turn, posiible values c("left", "right")
#' 
#' @details
#' To use turn, the tutrle must be initiated, see \code{\link{turtle_init}}. 
#' After \code{turn} function, the turtle turns and during next 
#' \code{\link{move_forward}} usage, the turtle goes in the changed direction.
#'
#'
#' @return
#' Opis obiektu, ktory funkcja zwraca.
#'
#' @seealso
#' \code{\link{turtle_init}}, \code{\link{move_forward}}, 
#'
#' @examples
#' left(30)
#' right(40)
#' turn(30, "left")
#' turn(30, sample(c("left", "right"), 1))
#' 
#' @export
turn <- function(angle = 0, direction = "left") {
  # checking correctness of the parameters 
  if(!exists(".turtle_history")) stop("Turtle has not been initiated, please type turtle_init() first")
  if(!(direction == "left" | direction == "right")) stop("This parameter should be 'left' or 'right' ")
  stopifnot(is.numeric(angle) & length(angle) == 1)
  if(angle < 0) warning("Negative value of angle turns turtle in the opposite direction")
  
  if(direction == "left"){ angle = angle * (-1) }
  
  curX <- .turtle_history$moves$x
  curY <- .turtle_history$moves$y
  newAng <- .turtle_history$moves$angle + angle  
  
  if(.turtle_history$visible){
    hide_turtle()
    show_turtle(curX, curY, newAng)
  }
  
  .turtle_history$moves$angle <<- newAng
}

#' @rdname turn
#' @export
left <- function(angle = 0) {
  turn(angle = angle, direction = "left")
}

#' @rdname turn
#' @export
right <- function(angle = 0) {
  turn(angle = angle, direction = "right")
}
