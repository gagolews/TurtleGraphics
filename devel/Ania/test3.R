# SOURCE: http://interactivepython.org/runestone/static/pythonds/Recursion/graphical.html

drawSpiral <- function(lineLen){
   if (lineLen > 0){
#       turtle_col(col=sample(colors(), 1))
#       turtle_lwd(lwd=2)
#       turtle_lty(lty=sample(1:6, 1))
      turtle_forward(lineLen)
      turtle_right(90)
      drawSpiral(lineLen-5)      
   }
   invisible(NULL)
}


# pdf("devel/Ania/sprial.pdf", onefile=FALSE)
turtle_init(500, 500, mode="clip")
turtle_setpos(x=0, y=0)
turtle_col("blue")
turtle_do(drawSpiral(500))
turtle_setpos(x=250, y=0)
turtle_left(45)
turtle_col("green")
turtle_do(drawSpiral(354))
turtle_setangle(0)
# dev.off()

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

# pdf("devel/Ania/sierpinski.pdf", onefile=FALSE)
turtle_init(520, 500, "clip")
p <- matrix(c(10, 10, 510, 10, 250, 448), nrow=3, byrow=TRUE)
turtle_col("red")
turtle_do(sierpinski(p, 6))
turtle_setpos(250, 448) 
# dev.off()