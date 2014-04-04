#' @title Opis Co Funkcja Robi (zalecenie: po angielsku + Title Case)
#'
#' @description
#' Co robi funkcja.
#' Takie tam wprowadzenie.
#'
#' @details
#' Wiecej szczegolowych informacji.
#'
#' To bedzie drugi akapit.
#'
#' @return
#' Opis obiektu, ktory funkcja zwraca.
#'
#' @param x opis do czego sluzy ten parametr
#' @param y opis znowu
#'
#' @examples
#' left(30)
#' right(40)
#'
#' @export

turn <- function(direction = "left", angle = 0) {
  # checking correctness of the parameters 
  if(!exists(".turtle_history")) stop("Turtle has not been initiated, please type turtle_init() first")
  if(!(direction == "left" | direction == "right")) stop("This parameter should be 'left' or 'right' ")
  stopifnot(is.numeric(angle) & length(angle) == 1)
  if(angle < 0) warning("negative value of angle turn turtle in the opposite direction")
  
  if(direction == "left"){ angle = angle * (-1) }
  
  curN <- .turtle_history$N
  curX <- .turtle_history$moves$x[curN]
  curY <- .turtle_history$moves$y[curN]
  newAng <- .turtle_history$moves$angle[curN] + angle  
  
  if(.turtle_history$moves$visible[curN]){
    #    vp <- viewport(angle = newAng)
    
    #    pushViewport(vp)
    hide_turtle()
    #!! change to new show_turtle 
    show_turtle(curX, curY, newAng)
    #     show_turtle(curX, curY)
    #    popViewport()
  }
  
  
  newN <- curN %% nrow(.turtle_history$moves) + 1
  .turtle_history$N <<- newN
  .turtle_history$moves[newN, ] <<- .turtle_history$moves[curN, ]
  .turtle_history$moves$angle[newN] <<- newAng
}

left <- function(angle = 0) {
  turn(direction = "left", angle = angle)
}

right <- function(angle = 0) {
  turn(direction = "right", angle = angle)
}