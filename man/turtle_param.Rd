\name{turtle_param}
\alias{turtle_col}
\alias{turtle_down}
\alias{turtle_draw}
\alias{turtle_lty}
\alias{turtle_lwd}
\alias{turtle_param}
\alias{turtle_up}
\title{Set Display Options}
\usage{
turtle_param(col = NULL, lwd = NULL, lty = NULL, draw = NULL)

turtle_col(col)

turtle_lwd(lwd)

turtle_lty(lty)

turtle_up()

turtle_down()

turtle_draw(draw)
}
\arguments{
  \item{col}{numeric or character; Trace color}

  \item{lty}{numeric; Trace line type}

  \item{lwd}{numeric; Trace line width}

  \item{draw}{logical; Determines whether a trace should be
  drawn at all}
}
\description{
Sets the display options for the turtle's trace. It is
possible to change its color, line type, line width or
whether the turtle is drawn or not.
}
\details{
The turtle must be initialized prior to using this
function, see \code{\link{turtle_init}}.

After running any of the parameter changing functions, the
trace of a turtle changes during the next
\code{\link{turtle_forward}} usage.

\code{turtle_up} and \code{turtle_down} lifts and drops the
turtle respectively, so it leaves the trace or not.
}
\examples{
turtle_init()
turtle_forward(5)
turtle_up()
turtle_forward(3)
turtle_down()
turtle_left(90)
turtle_forward(5)
turtle_param(col = "red", lwd = 2, lty = 2)
turtle_forward(5)
}
\seealso{
Other TurtleGraphics: \code{\link{TurtleGraphics-package}};
\code{\link{turtle_backward}},
\code{\link{turtle_forward}}, \code{\link{turtle_move}};
\code{\link{turtle_hide}}, \code{\link{turtle_show}};
\code{\link{turtle_init}}; \code{\link{turtle_left}},
\code{\link{turtle_right}}, \code{\link{turtle_turn}};
\code{\link{turtle_reset}}; \code{\link{turtle_status}}
}

