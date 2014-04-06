\name{reset}
\alias{reset}
\title{Clear the Plot Region}
\usage{
reset()
}
\description{
\code{reset()} function clear the plot region and moves the
turtle to the start point.
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
move_forward(3)
}
\seealso{
\code{\link{set_param}}
}

