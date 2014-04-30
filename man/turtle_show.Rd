\name{turtle_hide}
\alias{turtle_hide}
\alias{turtle_show}
\title{Show Turtle Image}
\usage{
turtle_hide()

turtle_show()
}
\description{
\code{turtle_show()} function enable the turtle image be
displayed while the path is drawn. \code{turtle_hide()}
function unable the turtle image be displayed while the
path is drawn.
}
\details{
To use \code{turtle_hide()} the turtle must be initiated,
see \code{\link{turtle_init}}. Please note, that after
\code{turtle_hide()} was called the turtle image will not
be visible during next moves, untli
\code{\link{turtle_show}} will be used.
}
\examples{
turtle_init()
move_forward(4)
turtle_hide()
left(30)
move_forward(3)
}
\seealso{
\code{\link{turtle_init}}, \code{\link{move_forward}},
\code{\link{turn}}
}

