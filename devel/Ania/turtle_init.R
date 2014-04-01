require("grid")
library("png")
# help(package="grid")

turtle_init<- function(){
  image <- readPNG("devel/Ania/turtle2.png")
  ruchy <<- data.frame(x=0.5, y=0.5)
  grid.newpage()
  grid.raster(as.raster(image), x=0.5, y=0.5, height=unit(0.09,"npc"), width=unit(0.09,"npc"), name="turtle")
}

# I tink that we should create the file img and put turtle2.img inside - thats how it was done 
# in png package

move_forward<- function(x){
  y <- x+0.5
  n <- nrow(ruchy)
  ruchy <<- rbind(ruchy, c(ruchy[n, 1], y))
  grid.remove("turtle")
  grid.polygon(ruchy$x[n:(n+1)], ruchy$y[n:(n+1)], name = "lines")
  grid.raster(as.raster(image), x=ruchy$x[n+1], y=ruchy$y[n+1], height=unit(0.09,"npc"), width=unit(0.09,"npc"), name="turtle")
}

turtle_init()
move_forward(0.7)

help(package="png")

graphics.off()

grid.polygon(x=unit(0, "npc"), y=unit(0, "npc"))
grid.polygon(x=unit(c(0,0.5), "npc"), y=unit(c(0,0.5), "npc"))
