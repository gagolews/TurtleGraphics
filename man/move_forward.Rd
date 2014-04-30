\name{move_forward}
\alias{move_backward}
\alias{move_forward}
\title{Moving a turtle forward or backward.}
\usage{
move_forward(dist = 1)

move_backward(dist = 1)
}
\arguments{
  \item{dist}{Specifies the range of distance for a Turtle
  to move. The default value for both functions is
  \code{dist = 0.1}.}
}
\value{
Nothing is returned. Just the moves of a Turtle are printed
in Plots window.
}
\description{
Those functions able to move a Turtle. Command
\code{move_forward} moves a Turtle in a forward direction,
command \code{back_forward} moves a Turtle in a backward
direction.
}
\details{
To use, the tutrle must be initiated, see
\code{\link{turtle_init}}. Both, \code{move_forward} and
\code{move_backward}, are using parameteres specified in
\code{\link{set_param}} function (or if not, use default
parameters from \code{turtle_init}). Also if functio
\code{up} or \code{down} were used, route after Turtle is
printed or not. Functions \code{move_forward} and
\code{move_backward} correspond to
\code{\link{turtle_show}}, \code{\link{turtle_hide}} and
after proceding his moves a Turtle is shown or not.
}
\examples{
turtle_init()
move_forward(0.2)
move_backward(0.1)

#do not work:
turtle_init()
move_forward(-0.3)
move_backward(-0.4)

# longer journey
turtle_init()
turn(30, "left")
move_forward(2)
up()
move_forward(1)
down()
turn(60, "right")
move_forward(9)

# backward journey
turtle_init()
turn(60, "left")
move_backward(6)
move_forward(12)
turn(90, "right")
move_backward(9)


# journey from developers tests

turtle_init()
turn(30, "left")
turn(30, "left")
move_forward(16)
turn(30, "left")
turn(30, "left")
move_forward(16)
turn(30, "left")
turn(30, "left")
move_forward(16)
turn(30, "left")
turn(30, "left")
move_forward(16)
turn(30, "left")
move_forward(16)
turtle_hide()
turn(30, "left")
move_forward(16)
move_forward(16)
turtle_show()
move_forward(16)
turn(30, "left")
move_forward(16)
move_forward(16)
}
\seealso{
\code{\link{turtle_init}}, \code{\link{up}},
\code{\link{down}}, \code{\link{set_param}},
\code{\link{turtle_show}}, \code{\link{turtle_hide}}
}

