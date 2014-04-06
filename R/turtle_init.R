#' @rdname turtle_init
#' @title Starting the Turtle Program
#'
#' @description
#' \code{turtle_init()} function create an empty page with the turtle image displayed in the 
#' center.  
#' 
#' @details
#' After \code{turtle_init()} was called you can move the turtle with \code{\link{move_forward}} 
#' or \code{\link{move_bakcward}} functions, turn its direction with
#' \code{\link{turn}} or set graphical parameters of the turtle trace, 
#' see \code{\link{set_param}}. 
#'
#' @export
turtle_init<- function(){
  .turtle_history <<- list(col = "black",
                           lty = 1,
                           lwd = 1,
                           visible = TRUE,
                           draw = T,
                           moves = list(x = 0.5, 
                                        y = 0.5,
                                        angle = 0))
  grid.newpage()
  show_turtle(.turtle_history$moves$x, .turtle_history$moves$y, .turtle_history$moves$angle)
}

