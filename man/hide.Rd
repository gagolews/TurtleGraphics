\name{hide}
\alias{hide}
\alias{hide_turtle}
\title{Hide Turtle Image}
\usage{
hide()

hide_turtle()
}
\description{
\code{hide()} function disable the turtle image from being
displayed while the path is drawn.
}
\details{
To use \code{hide()} the turtle must be initiated, see
\code{\link{turtle_init}}. Please note, that after
\code{hide()} was called the turtle image will not be
visible during next moves, untli \code{\link{show}} will be
used.
}
\examples{
turtle_init()
move_forward(4)
hide()
left(30)
move_forward(3)
}
\seealso{
\code{\link{show}}, \code{\link{move_forward},
\code{\link{turn}
}

