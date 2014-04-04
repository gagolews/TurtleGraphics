#' @export
show_turtle<-function(x, y){
  grid.raster(.image, x, y, 
              height=unit(0.09,"npc"), width=unit(0.09,"npc"), 
              name="turtle")
}

