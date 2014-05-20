

turtle_brownian <- function(steps=100, length=10){
   turtle_lwd(2)
   angles <- sample(c(90,270,180,0), steps,replace=TRUE)
   coll <- sample(1:657, steps, replace=TRUE)
   for (i in 1:steps){
      turtle_left(angles[i])
      turtle_col(colors()[coll[i]])
      turtle_forward(length)
   }
   
}
library(TurtleGraphics)
turtle_init(800,800, mode="cycle")
turtle_do(turtle_brownian(1000, length=25))

