# turtle on a snowflake
turtle_init()
set_col("blue")
set_lwd(3)
hide()
for(i in 1:5){
  move_forward(2)
  for(j in 1:5){
    move_forward(1)
    up()
    move_backward(1)
    down()
    left(72)
  }
  up()
  move_backward(2)
  down()
  left(72)
}
show()

#turtle on a spiderweb
turtle_init()
set_lwd(2)
left(20)
for(i in 1:5){
  move_forward(4)
  up()
  move_backward(4)
  down()
  left(60)
}
for(i in 1:3){
  move_forward(1)
  left(120)
  for(j in 1:6){
    move_forward(i)    
    left(60)
  }
  right(120)
}
move_forward(1)
up()
move_backward(2)
down()
left(90)

# testing parameters:
turtle_init()
for(i in 1:10){
  set_col(i)
  set_lty(i)
  set_lwd(i)
  move_forward(3)
  left(10)
}

turtle_init()
up()
left(90)
move_forward(5)
right(95)
down()
set_lwd(3)
for(i in 1:100){
  move_forward(5)
  set_col(sample(1:50, 1))
}

# drunken turtle
turtle_init()
hide()
for(i in 1:1000){
  left(sample(1:360, 1))
  move_forward(runif(1, 1, 3))
}
show()


