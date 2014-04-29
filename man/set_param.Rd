\name{set_param}
\alias{down}
\alias{set_col}
\alias{set_lty}
\alias{set_lwd}
\alias{set_param}
\alias{up}
\title{Setting Parameters of the Turtle Trace}
\usage{
set_param(col = NA, lwd = NA, lty = NA, draw = NA)

set_col(col)

set_lwd(lwd)

set_lty(lty)

up()

down()
}
\arguments{
  \item{col}{Color of a trace, should be the correct R
  color}

  \item{lty}{\code{numeric} Line type of a trace}

  \item{lwd}{\code{numeric} Line width of a trace}

  \item{visible}{\code{bolean} If a trace should be drawn}
}
\description{
Sets parameters of the turtle trace. It is possible to
change its color, line type, line width or if should be
drawn or not. To change each of the parameters more easily
\code{set_lwd}, \code{set_lty}, \code{set_col}, \code{up}
and \code{down} are also availabale.
}
\details{
To use, the tutrle must be initiated, see
\code{\link{turtle_init}}. After running any of the
parameter changing functions, the trace of a turtle changes
during the next \code{\link{move_forward}} usage.

\code{up} and \code{down} lifts and drops the turtle
respectively, so it leaves the trace or not.
}
\examples{
turtle_init()
move_forward(5)
up()
move_forward(3)
down()
left(90)
move_forward(5)
set_param(col = "red", lwd = 2, lty = 2)
move_forward(5)
}
\seealso{
\code{\link{turtle_init}}, \code{\link{move_forward}},
\code{\link{turn}}
}

