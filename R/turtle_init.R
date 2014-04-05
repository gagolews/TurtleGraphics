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
turtle_init<- function(size=1000){
  stopifnot(is.numeric(size))
  stopifnot(length(size)==1, size>0)
  .turtle_history <<- list(N = 1, 
                           moves = data.frame(x = c(0.5, rep(NA, size- 1)), 
                                              y = c(0.5, rep(NA, size - 1)), 
                                              angle = c(0, rep(NA, size - 1)), 
                                              visible = c(TRUE, rep(NA, size - 1)), 
                                              col = c("black", rep(NA, size - 1)), 
                                              lwd = c(1, rep(NA, size - 1)), 
                                              lty = c(1, rep(NA, size - 1))))
  grid.newpage()
  show_turtle(.turtle_history$moves$x[1], .turtle_history$moves$y[1], .turtle_history$moves$angle[1])
}

