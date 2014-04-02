# rotates turtle left or right
# TODO: check if turtle is initiated
# TODO: different bahaviour for not visible turtle
# 

turn <- function(direction = "left", angle = 0) {

  # TODO: 
  # check if turtle is initiatted otherwise error
  
  # different behaviour if turtle not visible...
  
  stopifnot(direction == "left" | direction == "right")
  stopifnot(is.numeric(angle) & length(angle) == 1)
  
  # TODO: warning if angle is < 0 : "negative value of angle turn turtle in th eopposite direction"
  
  if(direction == "right") angle = angle * (-1)
  
}  

left <- function(angle = 0) {
  turn(direction = "left", angle = angle)
}

right <- function(angle = 0) {
  turn(direction = "right", angle = angle)
}


