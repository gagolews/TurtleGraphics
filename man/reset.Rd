\name{reset}
\alias{reset}
\title{Clear the Plot Region}
\usage{
reset()
}
\description{
\code{reset()} function moves the turtle to the start point
without clearing the plot region.
}
\details{
Please note that \code{reset} function do not change the
graphical parameters - they stay unchaned from the last
time \code{set_param} was called. To use \code{reset}, the
tutrle must be initiated, see \code{\link{turtle_init}}.
}
\examples{
turtle_init()
move_forward(4)
set_param(col="red", lty=2, lwd=3)
reset()
left(45)
move_forward(3)
}
\seealso{
\code{\link{set_param}}
}

