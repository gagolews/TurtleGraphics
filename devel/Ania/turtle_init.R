require("grid")
library("png")

# I tink that we should create the file img and put turtle2.img inside - thats how it was done 
# in png package

show_turtle<-function(x, y){
  image <- readPNG("devel/Ania/turtle2.png")
  grid.raster(as.raster(image), x, y, height=unit(0.09,"npc"), width=unit(0.09,"npc"), name="turtle")
}

hide_turtle<-function(){
  grid.remove("turtle")
}

turtle_init<- function(){
  ruchy <<- data.frame(x=0.5, y=0.5)
  grid.newpage()
  show_turtle(ruchy$x, ruchy$y)
}

move_forward<- function(x){
  n <- nrow(ruchy)
  y <- ruchy$y[n]+x
  hide_turtle()
  ruchy <<- rbind(ruchy, c(ruchy[n, 1], y))
  grid.polygon(ruchy$x[n:(n+1)], ruchy$y[n:(n+1)], name = "lines")
  show_turtle(ruchy$x[n+1], ruchy$y[n+1])
}

graphics.off()

turtle_init()
move_forward(0.2)
move_forward(0.1)
move_forward(0.1)



