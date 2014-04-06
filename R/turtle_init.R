#' @rdname turtle_init
#' @title Initialization of the Turtle Program
#'
#' @description
#' \code{turtle_init()} create an empty page with the Turtle image displayed in the 
#' middle. 
#'
#' @param size A non-negative scalar denoting a number of turtle moves to be drawn
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

