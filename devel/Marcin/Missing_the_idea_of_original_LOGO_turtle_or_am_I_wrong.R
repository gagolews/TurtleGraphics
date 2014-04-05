turtle_init()
.turtle_history$moves[1:5,]




for (i in 1:10)
show_turtle(0.033+i/10,0.033+i/10,45)
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
turn(30, "left")
# Shouldn't show_turtle function just chagne the parameter do we see or we dont see a turtle?
# i think i don't get the idea - but that how it was managed in original Turtle.

# In that case when i type 
# for (i in 1:10)
# show_turtle(0.033+i/10,0.033+i/10,45)
# ten turtle appeare.

# BTW when i hide turtle

turtle_init()
.turtle_history$moves[1:5,]
hide_turtle()
turn(30,"left")
# I get error when I want to change his angle or coordinates.
# I think it does not work in the same idea as it worked in original LOGO Turtle.