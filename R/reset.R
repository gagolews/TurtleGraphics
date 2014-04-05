#' @rdname reset
#' @aliases reset
#' @title Reset the Turtle History
#'
#' @description
#' \code{reset()} function clear the plot region and history of moves that have been made.
#' 
#'
#' @seealso
#' \code{\link{turtle_init}} 
#'
#' @export
reset <- function(){
  size <- nrow(.turtle_history$moves)
  .turtle_history <<- list(N = 1, 
                           col = "black",
                           moves = data.frame(x = c(0.5, rep(NA, size- 1)), 
                                              y = c(0.5, rep(NA, size - 1)), 
                                              angle = c(0, rep(NA, size - 1)), 
                                              visible = c(TRUE, rep(NA, size - 1)),
                                              draw = c(TRUE, rep(NA, size - 1)), 
                                              lwd = c(1, rep(NA, size - 1)), 
                                              lty = c(1, rep(NA, size - 1))))
  
  graphics.off()
} 
