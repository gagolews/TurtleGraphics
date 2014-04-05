\name{set_param}
\alias{down}
\alias{set_col}
\alias{set_lty}
\alias{set_lwd}
\alias{set_param}
\alias{up}
\title{Setting Parameters of the Turtle}
\usage{
set_param(col = NA, lwd = NA, lty = NA, visible = NA, draw = NA)

set_col(col)

set_lwd(lwd)

set_lty(lty)

up()

down()
}
\arguments{
  \item{col}{Color of a trace}

  \item{lty}{Line type of the trace}

  \item{lwd}{Line width of the trace}

  \item{visible}{\code{bolean} If trace should be drawn}
}
\value{
Opis obiektu, ktory funkcja zwraca.
}
\description{
Sets parameters of the turtle.

\code{up} and \code{down} lifts and drops turtle
respectively, so it leaves the trace or not.
}
\details{
To use, the tutrle must be initiated, see
\code{\link{turtle_init}}. After running any of parameter
changing functions, the trace of a turtle changes during
the next \code{\link{move_forward}} usage.
}
\examples{
turtle_init(10)
move_forward(5)
up()
move_forward(3)
down()
left(90)
move_forward(5)
set_param(col = "red", lwd = 3, lty = 2)
move_forward(5)
}
\seealso{
\code{\link{turtle_init}}, \code{\link{move_forward}},
}

