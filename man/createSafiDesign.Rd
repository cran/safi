\name{createSafiDesign}
\alias{createSafiDesign}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creating an initial DoE for a given number of (functional) inputs
}
\description{
 An initial design object is created.
}
\usage{
createSafiDesign(method = "SB", mirrored.runs.included = FALSE, d.f = 1, variable.names)
}

\arguments{
  \item{method}{
  a character string specifying the evaluation method to be chose from \code{"SB"} and \code{"other"}. Currently only \code{"SB"}, sequential bifurcation, is implemented. For \code{"other"} the \code{DoE} has to be added to the object manually.
}
  \item{mirrored.runs.included}{
 boolean. If \code{TRUE} mirror runs will be included in the design.
}
  \item{d.f}{
number of (functional) inputs
}
  \item{variable.names}{
optional variable names (if \code{NULL} names are set to \code{x1,x2,...})
}
}
\value{
\code{safidesign} object containing \code{DoE}, \code{split.points} and \code{d.f}, \code{mirrored.runs.included} and \code{method}
}
\references{
Fruth, J.; Roustant, O.; Kuhnt, S. (2014) Sequential designs for sensitivity analysis of functional inputs in computer experiments, \emph{Reliability Engineering & System Safety}, doi: 10.1016/j.ress.2014.07.018, preprint on HAL: \url{http://hal.archives-ouvertes.fr/hal-00943509}.


Bettonvil, B. (1995) Factor screening by sequential bifurcation, \emph{Communications in Statistics-Simulation and Computation}, \bold{24}, 165-185.
}

\examples{
# one input
s.d <- createSafiDesign()
s.d

# two inputs
s.d <- createSafiDesign(d.f = 2)
s.d

# including mirrored runs
s.d <- createSafiDesign(d.f = 2, mirrored.runs.included = TRUE)
s.d 

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
