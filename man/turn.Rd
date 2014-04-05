\name{turn}
\alias{left}
\alias{right}
\alias{turn}
\title{Turn Turtle}
\usage{
turn(angle = 0, direction = "left")

left(angle = 0)

right(angle = 0)
}
\arguments{
  \item{angle}{Angle of turn in degrees. If negative the
  turtle turn in the opposite direction than the given
  direction}

  \item{direction}{Direction of turn, posiible values
  c("left", "right")}
}
\value{
Opis obiektu, ktory funkcja zwraca.
}
\description{
Turn turtle by the given angle in degrees and in the given
one.

\code{left} and \code{right} turn turtle to left or right
by the given angle.
}
\details{
To use turn, the tutrle must be initiated, see
\code{\link{turtle_init}}. After \code{turn} function, the
turtle turns and during next \code{\link{move_forward}}
usage, the turtle goes in the changed direction.
}
\examples{
left(30)
right(40)
turn(30, "left")
turn(30, sample(c("left", "right"), 1))
}
\seealso{
\code{\link{turtle_init}}, \code{\link{move_forward}},
}

