#' @rdname reset
#' @aliases reset
#' @title Reset the Turtle History
#'
#' @description
#' \code{reset()} function clear the plot region and moves the Turtle to the start point.
#' 
#'
#' @seealso
#' \code{\link{turtle_init}} 
#'
#' @export
reset <- function(){
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
