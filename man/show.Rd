\name{show}
\alias{show}
\alias{show_turtle}
\title{Show Turtle Image}
\usage{
show()

show_turtle(x, y, angle)
}
\arguments{
  \item{x,y}{Coordinates describing the Turtle position in
  the picture}

  \item{angle}{Angle of turn in degrees. If negative the
  turtle turn in the opposite direction than the given
  direction}
}
\description{
\code{show()} function make Turtle image be displayed while
the path is drawn. \code{show_turtle(x, y, angle)} function
display the image of the Turtle in a position given by x,
y, angle cooridnates. This function is inner function.
}
\details{
To use turn, the tutrle must be initiated, see
\code{\link{turtle_init}}.
}

