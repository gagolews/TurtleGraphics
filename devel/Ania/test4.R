turtle_init()
turtle_setpos(25, 25)
n <- 100
turtle_hide()
for (i in 1:n){
   turtle_move(50)
   turtle_right(85)
}

turtle_show()


spirala <- function(d, c){
   turtle_setpos(10, 10)
   n <- 100
   for (i in 1:n){
      turtle_move(d)
      turtle_right(c)
      d <- d*0.9
   }
invisible(NULL)   
}

turtle_init(mode="cycle")
turtle_hide()
spirala(20, 15)
turtle_setangle(0)
spirala(10, 15)
turtle_setangle(0)
spirala(5, 5)
turtle_setangle(0)
spirala(25, 10)
