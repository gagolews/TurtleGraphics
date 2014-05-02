turtle_init(500, 600, 'clip')
turtle_up()
turtle_backward(250)
turtle_down()


fractal_tree <- function(s=100, n=2) {
   if (n <= 1) {
      turtle_forward(s)
      turtle_up()
      turtle_backward(s)
      turtle_down()
   }
   else {
      turtle_forward(s)
      
      a1 <- runif(1, 10, 60)
      turtle_left(a1)
      fractal_tree(s*runif(1, 0.25, 1), n-1)
      turtle_right(a1)
      
      a2 <- runif(1, 10, 60)
      turtle_right(a2)
      fractal_tree(s*runif(1, 0.25, 1), n-1)
      turtle_left(a2)
      
      turtle_up()
      turtle_backward(s)
      turtle_down()
   }
}


turtle_hide()
fractal_tree(100, 12)
turtle_show()



