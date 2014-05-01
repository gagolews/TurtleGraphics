\name{turtle_move}
\alias{turtle_backward}
\alias{turtle_forward}
\alias{turtle_move}
\title{Move a Turtle forward or backward}
\usage{
turtle_move(dist = 1, direction = c("forward", "backward"))

turtle_forward(dist = 1)

turtle_backward(dist = 1)
}
\arguments{
  \item{dist}{Specifies the distance to make.  Negative
  distance results in moving in the opposite direction.}

  \item{direction}{Moving direction.  One of
  \code{"forward"} or \code{"backward"}.}
}
\description{
\code{move_forward} moves a Turtle in a forward direction,
and \code{back_forward} moves a Turtle in a backward
direction.
}
\details{
The turtle must be initialized prior to using this
function, see \code{\link{turtle_init}}.

These functions make use of the turtle options specified by
\code{\link{set_param}} function (or if not, use default
parameters from \code{turtle_init}).

Note that if function \code{\link{turtle_up}} or
\code{\link{turtle_down}} was called, the Turtle's route
will be drawn or not drawn, respectively.

If you are willing to call these functions in an R loop,
you may want to hide the turtle (see
\code{\link{turtle_hide}}) befor making actual moves. This
will increase the drawing performance significantly.
}
\examples{
turtle_init()
turtle_left(30)
turtle_forward(2)
turtle_up()
turtle_forward(1)
turtle_down()
turtle_right(60)
turtle_forward(9)
}
\seealso{
Other TurtleGraphics: \code{\link{TurtleGraphics-package}};
\code{\link{turtle_left}}, \code{\link{turtle_left}},
\code{\link{turtle_right}}, \code{\link{turtle_right}},
\code{\link{turtle_turn}}, \code{\link{turtle_turn}}
}

