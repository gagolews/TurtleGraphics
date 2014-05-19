library(TurtleGraphics)
library(parallel)




turtle_rainbow_star_rain <- function(times=5, size=1){
   
   for (i in 1:times){
      
   turtle_setpos(sample(300:700,1),sample(300:700,1))
   for (i in 1:(360*size)){
      turtle_right(90)
      turtle_col(colors()[sample(1:657, 1)])
      x <- sample(1:40,1)
      turtle_forward(x)
      turtle_up()
      turtle_backward(x)
      turtle_down()
      turtle_left(90)
      turtle_forward(1/size)
      turtle_left(1/size)
   }   

}}

turtle_init(800,800)
turtle_left(90)
#turtle_rainbow_star_rain(10) - withouth cluster


cl <- makeCluster(detectCores())
clusterEvalQ(cl, library(TurtleGraphics))
system.time(parLapply(cl, 1, turtle_do(turtle_rainbow_star_rain(1,10))))
# cluster bomb
# system.time(parLapply(cl, 1, turtle_do(turtle_rainbow_star_rain(20,10))))
stopCluster(cl)

turtle_hide()









turtle_rainbow_star_rain2 <- function(size=1){
   
   
      
      
      for (i in 1:(360*size)){
         turtle_right(90)
         turtle_col(colors()[sample(1:657, 1)])
         x <- sample(1:100,1)
         turtle_forward(x)
         turtle_up()
         turtle_backward(x)
         turtle_down()
         turtle_left(90)
         turtle_forward(1/size)
         turtle_left(1/size)
         
      
   }}
turtle_init(500,500)
turtle_left(90)
#turtle_rainbow_star_rain(10) - withouth cluster


cl <- makeCluster(detectCores())
clusterEvalQ(cl, library(TurtleGraphics))
system.time(parLapply(cl, 1, turtle_do(turtle_rainbow_star_rain2(10))))
# cluster bomb
# system.time(parLapply(cl, 1, turtle_do(turtle_rainbow_star_rain(20,10))))
stopCluster(cl)

turtle_hide()
