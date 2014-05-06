library(TurtleGraphics)
turtle_init(100, 100, mode = "cycle")
turtle_left(10)
turtle_forward(200)
turtle_right(20)
turtle_forward(10000)

turtle_init(100, 100, mode = "cycle")
for(i in 1:10){
  turtle_left(runif(1,0,360))
  turtle_forward(runif(1, 0, 1000))  
}
# jak sie wcisnie stop podczas rysowania, to moze pol zolwia zostac...



