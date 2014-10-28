\name{safiModel}
\alias{safiModel}

\title{
Functional sensitivity analysis
}
\description{
computes normalized regression indices for the sensitivity analysis of functional inputs
}
\usage{
safiModel(s.d, y)
}

\arguments{
  \item{s.d}{
\code{safidesign}-object
}
  \item{y}{
model response
}

}
\details{
If the design was created with method \code{"SB"} the coefficients are computed via sequential bifurcation, for method \code{"other"} via least squares estimation.
}
\value{
\code{safimodel} object containing the design and the computed coefficients
}
\references{Fruth, J.; Roustant, O.; Kuhnt, S. (2014) Sequential designs for sensitivity analysis of functional inputs in computer experiments, \emph{Reliability Engineering & System Safety}, doi: 10.1016/j.ress.2014.07.018, preprint on HAL: \url{http://hal.archives-ouvertes.fr/hal-00943509}.
}

\examples{

### simple example

s.d <- createSafiDesign(d.f = 1)
s.d2 <- splitSafiDesign(s.d = s.d, new.split.points = list(c(0.25, 0.75)))

# artificial model output (rising influence)
x <- accessSafiDesign(s.d = s.d2, n.timepoints = 4)
y <- x$x1 \%*\% c(0, 1, 2, 3)
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

