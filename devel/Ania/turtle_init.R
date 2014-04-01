require("grid")
library("png")
# help(package="grid")

turtle_init<- function(){
  ruchy <<- data.frame(x=0.5, y=0.5)
  grid.newpage()
#   plot.window(c(-1,1), c(-1,1))
#   grid.circle(ruchy$x[1], ruchy$y[1], r = .01, name = "ciri")
  grid.raster(as.raster(image), x=0.5, y=0.5, height=unit(0.09,"npc"), width=unit(0.09,"npc"), name="turtle")
}

move_forward<- function(x){
  y <- x+0.5
  n <- nrow(ruchy)
  ruchy <<- rbind(ruchy, c(ruchy[n, 1], y))
  grid.remove("turtle")
  grid.polygon(ruchy$x[n:(n+1)], ruchy$y[n:(n+1)], name = "lines")
#   grid.circle(ruchy$x[n+1], ruchy$y[n+1], r = .01, name = "ciri")
  grid.raster(as.raster(image), x=ruchy$x[n+1], y=ruchy$y[n+1], height=unit(0.09,"npc"), width=unit(0.09,"npc"), name="turtle")
}

# graphics.off()
image <- readPNG("devel/Ania/turtle.png")

turtle_init()
move_forward(0.2)
