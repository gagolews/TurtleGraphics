#example that does not use cluster calculations

turtle_star <- function(intensity=1){
   
   y <- sample(1:657, 360*intensity, replace=TRUE)
   
   
   for (i in 1:(360*intensity)){
      turtle_right(90)
      turtle_col(colors()[y[i]])
      x <- sample(1:100,1)
      turtle_forward(x)
      turtle_up()
      turtle_backward(x)
      turtle_down()
      turtle_left(90)
      turtle_forward(1/intensity)
      turtle_left(1/intensity)
      
      
   }}
library(TurtleGraphics)

turtle_init(500,500)
turtle_left(90)
turtle_hide()
turtle_star(5) #- without cluster
turtle_show()