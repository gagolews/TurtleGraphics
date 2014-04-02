# rotates turtle left or right

turn <- function(direction = "left", angle = 0) {
  
  # checking correctness of the parameters 
  if(!exists("turtle_history")) stop("Turtle has not been initiated, please type turtle_init() first")
  if(!(direction == "left" | direction == "right")) stop("This parameter should be 'left' or 'right' ")
  stopifnot(is.numeric(angle) & length(angle) == 1)
  if(angle < 0) warning("negative value of angle turn turtle in the opposite direction")
  
  if(direction == "right"){ angle = angle * (-1) }
  
  curN <- turtle_history$N  
  
  vp <- viewport(angle = angle)
  pushViewport(vp)

  if(turtle_history$moves$visible[curN]){
    hide_turtle()  
    show_turtle(0.5,0.5)    
  }

  newN <- curN %% nrow(turtle_history$moves) + 1
  turtle_history$N <<- newN
  turtle_history$moves[newN, ] <<- turtle_history$moves[curN, ]
  turtle_history$moves$angle[newN] <<- turtle_history$moves$angle[curN] + angle
}

left <- function(angle = 0) {
  turn(direction = "left", angle = angle)
}

right <- function(angle = 0) {
  turn(direction = "right", angle = angle)
}
