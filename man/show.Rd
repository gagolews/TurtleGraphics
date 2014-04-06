\name{show}
\alias{show}
\alias{show_turtle}
\title{Show Turtle Image}
\usage{
show()

show_turtle(x, y, angle)
}
\arguments{
  \item{x,y}{Coordinates describing the turtle position in
  the picture}

  \item{angle}{Angle of turn in degrees.}
}
\description{
\code{show()} function enable the turtle image be displayed
while the path is drawn. \code{show_turtle(x, y, angle)}
function display the image of the Turtle in a position
given by x, y, angle cooridnates.
}
\details{
The main difference between \code{show} and
\code{show_turtle} is that the first one display the turtle
in the position set by previous usage of
\code{move_forward}, \code{move_backward} and \code{turn}
functions, while the second one allows you to create many
turtle images in any location. Please note that to use both
of them, the turtle must be initiated, see
\code{\link{turtle_init}}.
}
\examples{
turtle_init()
move_forward(4)
hide()
left(30)
move_forward(3)
show()
}
\seealso{
\code{\link{hide}}, \code{\link{move_forward}},
\code{\link{turn}}
}

