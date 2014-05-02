# library('TurtleGraphics')
# turtle_init(600, 400, 'clip')
# turtle_forward(100)
# turtle_forward(100)
# turtle_forward(100)
# turtle_right(180)
# turtle_forward(100)
# turtle_forward(100)
# turtle_forward(100)
# turtle_backward(100)
# 
# 
# turtle_init(600, 400, 'error')
# turtle_forward(100)
# turtle_forward(100)
# turtle_forward(100)



turtle_init(600, 400, 'error')
turtle_up()
turtle_left(90)
turtle_forward(250)
turtle_right(180)
turtle_down()

koch <- function(s=50, n=6) {
   if (n <= 1)
      turtle_forward(s)
   else {
      koch(s/3, n-1)
      turtle_left(60)
      koch(s/3, n-1)
      turtle_right(120)
      koch(s/3, n-1)
      turtle_left(60)
      koch(s/3, n-1)
   }
}


turtle_hide()
koch(500, 6)
turtle_show()


