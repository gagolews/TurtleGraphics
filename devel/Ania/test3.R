# SOURCE: http://interactivepython.org/runestone/static/pythonds/Recursion/graphical.html

drawSpiral <- function(lineLen){
   if (lineLen > 0){
      turtle_forward(lineLen)
      turtle_right(90)
      drawSpiral(lineLen-5)      
   }
   invisible(NULL)
}

turtle_init(500, 500, mode="clip")
turtle_setpos(x=0, y=0)
turtle_do(drawSpiral(500))

##############

drawTriangle<- function(points){
   turtle_setpos(points[1,1],points[1,2])
   turtle_goto(points[2,1],points[2,2])
   turtle_goto(points[3,1],points[3,2])
   turtle_goto(points[1,1],points[1,2])   
}

getMid<- function(p1,p2) c((p1[1]+p2[1])/2, c(p1[2]+p2[2])/2)

sierpinski <- function(points, degree){
   drawTriangle(points)
   if (degree > 0){
      p1 <- matrix(c(points[1,], getMid(points[1,], points[2,]),
                     getMid(points[1,], points[3,])), nrow=3, byrow=TRUE)  
      
      sierpinski(p1, degree-1)
      p2 <- matrix(c(points[2,], getMid(points[1,], points[2,]),
                     getMid(points[2,], points[3,])), nrow=3, byrow=TRUE)
      
      sierpinski(p2, degree-1)
      p3 <- matrix(c(points[3,], getMid(points[3,], points[2,]),
                     getMid(points[1,], points[3,])), nrow=3, byrow=TRUE)
      sierpinski(p3, degree-1)
   }
   invisible(NULL)
}


turtle_init(500, 500, "clip")
p <- matrix(c(0, 0, 500, 0, 250, 500), nrow=3, byrow=TRUE)
turtle_hide()
turtle_do(sierpinski(p, 6))
