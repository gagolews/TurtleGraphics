\name{turtle_reset}
\alias{turtle_reset}
\title{Reset the Turtle's Position and Direction}
\usage{
turtle_reset()
}
\description{
This function moves the turtle to the center and point
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
turtle_forward(4)
set_param(col="red", lty=2, lwd=3)
turtle_reset()
turtle_left(45)
turtle_forward(3)
}
\seealso{
Other TurtleGraphics: \code{\link{TurtleGraphics-package}};
\code{\link{turtle_backward}},
\code{\link{turtle_backward}},
\code{\link{turtle_forward}}, \code{\link{turtle_forward}},
\code{\link{turtle_move}}, \code{\link{turtle_move}};
\code{\link{turtle_hide}}, \code{\link{turtle_show}};
\code{\link{turtle_left}}, \code{\link{turtle_left}},
\code{\link{turtle_right}}, \code{\link{turtle_right}},
\code{\link{turtle_turn}}, \code{\link{turtle_turn}};
\code{\link{turtle_status}}
}

