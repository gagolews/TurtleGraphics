require("grid")

turtle_init2<- function(height=1, width=1){
  xlim <- c(0, width)
  ylim <- c(0, height)
  .turtle_history <<- list(col = "black",
                           lty = 1,
                           lwd = 1,
                           visible = TRUE,
                           draw = T,
                           moves = list(x = diff(xlim)/2, 
                                        y = diff(ylim)/2,
                                        angle = 0),
                           width=width,
                           height=height)
  grid.newpage()
  pushViewport(viewport( 
    x=0.5, y=0.5,
    w=unit(min(1,diff(xlim)/diff(ylim)), "snpc"), 
    h=unit(min(1,diff(ylim)/diff(xlim)), "snpc"),
    xscale=xlim, 
    yscale=ylim  
  ))
  .show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, .turtle_history$moves$angle)
}

xlim<-c(0,2)
ylim<-c(0,3)

.show_turtle <- function(x, y, angle)
{ 
  xlim <- c(0, .turtle_history$width)
  ylim <- c(0, .turtle_history$height)
  w <- min(1,diff(xlim)/diff(ylim))
  h <- min(1,diff(ylim)/diff(xlim))
  r <- diff(xlim)
  ang <- angle * pi / 180
  grid.circle(x, y, r=0.03*r, default.units='native',
              gp = gpar(fill = "darkorange4", col = "brown"), name = "body")
#   grid.circle(x + w * sin(ang), y + h * cos(ang), default.units='native',  
#               gp = gpar(fill = "darkorange3", col = "brown"), r=0.01*r, name = "head")
#   grid.circle(x + w * sin(ang + pi/3), y + h * cos(ang + pi/3), default.units='native',  
#               gp = gpar(fill = "darkorange3", col = "brown"), r=r, name = "leg1")
#   grid.circle(x + w * sin(ang - pi/3), y + h * cos(ang - pi/3), default.units='native',  
#               gp = gpar(fill = "darkorange3", col = "brown"), r=r, name = "leg2")
#   grid.circle(x + w * sin(ang + 2*pi/3), y + h * cos(ang + 2*pi/3),  
#               gp = gpar(fill = "darkorange3", col = "brown"), r=r, 
#               default.units='native', name = "leg3")
#   grid.circle(x + w * sin(ang - 2*pi/3), y + h * cos(ang - 2*pi/3), default.units='native',  
#               gp = gpar(fill = "darkorange3", col = "brown"), r=r, name = "leg4")
  invisible(NULL)
}

turtle_init2(500, 10000)
turtle_init2(5, 10)
turtle_init2(0.55, 1.10)

xlim<-c(0,500)
ylim<-c(0,100)
