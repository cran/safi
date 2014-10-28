\name{plot.safimodel}
\alias{plot.safimodel}

\title{
Plotting SAFI model coefficients
}
\description{
Barplots of the functional sensitivities from a \code{safimodel} object. 
}
\usage{
\method{plot}{safimodel}(x, ylim = NULL, ...)
}
\arguments{
  \item{x}{
\code{safimodel} object
}
  \item{ylim}{
limits for the y-axis. If \code{NULL}, limits are computed internally.
}
  \item{\dots}{
optional graphical parameters
}
}
\value{
One plot for each functional input.
}
\references{
Fruth, J.; Roustant, O.; Kuhnt, S. (2014) Sequential designs for sensitivity analysis of functional inputs in computer experiments, \emph{Reliability Engineering & System Safety}, doi: 10.1016/j.ress.2014.07.018, preprint on HAL: \url{http://hal.archives-ouvertes.fr/hal-00943509}.
}
\examples{
### simple example

s.d <- createSafiDesign(d.f = 1)
s.d2 <- splitSafiDesign(s.d = s.d, new.split.points = list(c(0.25, 0.75)))

# artificial model output (rising influence)
x <- accessSafiDesign(s.d = s.d2, n.timepoints = 4)
y <- x$x1 \%*\% c(0,1,2,3)
s.m <- safiModel(s.d = s.d2, y = y)
plot(s.m)


### d.f = 3, mirrored

s.d <- createSafiDesign(d.f = 3, mirrored.runs.included = TRUE)
s.d2 <- splitSafiDesign(s.d, list(c(0.5), c(0.25, 0.75), c(0.25, 0.5, 0.75)))

# artificial model output (x1 without influence, x2 rising, x3 falling)
x <- accessSafiDesign(s.d = s.d2, n.timepoints = 4)
y <- x$x2 \%*\% c(0, 1, 2, 3) + x$x3 \%*\% c(0, -1, -2, -3)
s.m <- safiModel(s.d2, y = y)
plot(s.m) 
}