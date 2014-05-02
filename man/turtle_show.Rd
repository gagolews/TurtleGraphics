\name{turtle_show}
\alias{turtle_hide}
\alias{turtle_show}
\title{Show or Hide the Turtle}
\usage{
turtle_show()

turtle_hide()
}
\description{
These functions enable or disable displaying the turtle
image on the screen.
}
\details{
The turtle must be initialized prior to using this
function, see \code{\link{turtle_init}}.

It is recommended to hide the turtle when performing
multiple turtle moves, for efficiency reasons.
}
\examples{
turtle_init()
turtle_forward(4)
turtle_hide()
turtle_left(30)
turtle_forward(3)
}
\seealso{
Other TurtleGraphics: \code{\link{TurtleGraphics-package}};
\code{\link{turtle_backward}},
\code{\link{turtle_forward}}, \code{\link{turtle_move}};
\code{\link{turtle_col}}, \code{\link{turtle_lty}},
\code{\link{turtle_lwd}}, \code{\link{turtle_param}};
\code{\link{turtle_goto}}, \code{\link{turtle_setang}},
\code{\link{turtle_setpos}}; \code{\link{turtle_init}};
\code{\link{turtle_left}}, \code{\link{turtle_right}},
\code{\link{turtle_turn}}; \code{\link{turtle_reset}};
\code{\link{turtle_status}}
}

