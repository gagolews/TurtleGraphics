#' @export
show_turtle<-function(x, y){
  image <- readPNG("img/turtle2.png")
  grid.raster(as.raster(image), x, y, height=unit(0.09,"npc"), width=unit(0.09,"npc"), name="turtle")
}
