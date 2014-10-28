\name{splitSafiDesign}
\alias{splitSafiDesign}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Splitting up the domains of functional inputs
}
\description{
The functional domains of the input functions are split up at given points and a corresponding DoE is generated.
}
\usage{
splitSafiDesign(s.d, new.split.points)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{s.d}{
 \code{safidesign} object
}
  \item{new.split.points}{
list of new split points
}
}
\details{
For method \code{"other"} no runs are added. 
}
\value{
\code{safidesign}-object
}
\references{
Fruth, J.; Roustant, O.; Kuhnt, S. (2014) Sequential designs for sensitivity analysis of functional inputs in computer experiments, \emph{Reliability Engineering & System Safety}, doi: 10.1016/j.ress.2014.07.018, preprint on HAL: \url{http://hal.archives-ouvertes.fr/hal-00943509}.

Bettonvil, B. (1995) Factor screening by sequential bifurcation, \emph{Communications in Statistics-Simulation and Computation}, \bold{24}, 165-185.
}
\examples{
# two inputs
s.d <- createSafiDesign(d.f = 2)
s.d
s.d2 <- splitSafiDesign(s.d = s.d, new.split.points = list(c(0.5), c(0.25, 0.75)))
s.d2

# including mirrored runs
s.d <- createSafiDesign(d.f = 2, mirrored.runs.included = TRUE)
s.d
s.d2 <- splitSafiDesign(s.d, list(c(0.5), c(0.25, 0.75)))
s.d2 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
