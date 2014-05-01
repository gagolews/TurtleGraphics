\name{turtle_turn}
\alias{turtle_left}
\alias{turtle_right}
\alias{turtle_turn}
\title{Turn (Rotate) a Turtle}
\usage{
turtle_turn(angle = 0, direction = c("left", "right"))

turtle_left(angle = 0)

turtle_right(angle = 0)
}
\arguments{
  \item{angle}{Rotation angle in degrees.  A negative value
  turns the turtle turn in the opposite direction than the
  given one.}

  \item{direction}{Direction of turn.  Possible values are
  "left" and "right"}
}
\description{
Turn turtle in the given direction by the given angle.
}
\details{
The turtle must be initialized prior to using this
function, see \code{\link{turtle_init}}.
}
\examples{
turtle_init()
turtle_left(30) # equivalent to turtle_turn(30, "left")
turtle_right(40)
turtle_turn(30, sample(c("left", "right"), 1)) # random turn
}
\seealso{
Other TurtleGraphics: \code{\link{TurtleGraphics-package}};
\code{\link{turtle_backward}},
\code{\link{turtle_backward}},
\code{\link{turtle_forward}}, \code{\link{turtle_forward}},
\code{\link{turtle_move}}, \code{\link{turtle_move}}
}

