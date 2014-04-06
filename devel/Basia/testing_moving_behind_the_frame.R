# i'm not sure if it should work like that:
turtle_init()
right(5)
move_forward(15)
# and now, should'n it be in the same x coordinates when it leaves the frame and when it reurns?

turtle_init()
right(5)
move_forward(10)
move_forward(5)
# and now, even when the number of step in give direction is the same as previous the turtle is somwhere else

# BUG
turtle_init()
right(5)
move_forward(100)

#Błąd w if (dist < 0) warning("Negative value of distance moves turtle in the opposite direction.\n Use move_backward() function.") : 
#  brakuje wartości tam, gdzie wymagane jest TRUE/FALSE

turtle_init()
move_backward(1)
left(30)
.turtle_history
