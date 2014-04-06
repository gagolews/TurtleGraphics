# everything is fine :P
turtle_init()
right(5)
move_forward(15)
# IT IS THE SAME RESULT NOW
turtle_init()
right(5)
move_forward(10)
move_forward(5)
# WORKS NOW SORRRY

# NO BUG
turtle_init()
right(5)
move_forward(100)

#WORKS NOW

turtle_init()
move_backward(1)
left(30)
.turtle_history



# OK NOW IT ALL WORKS
# i changed directional factor, cose it was mistakenly counted 
# and now it is: a <- (newY-curY)/(newX-curX)