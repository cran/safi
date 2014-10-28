\name{plot.safidesign}
\alias{plot.safidesign}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plotting SAFI designs
}
\description{
Plotting the functional inputs against the functional domain
}
\usage{
\method{plot}{safidesign}(x, runs = NULL, ...)
}
\arguments{
  \item{x}{
\code{safidesign}-object
}
  \item{runs}{
vector of runs that shall be plotted, if not provided all runs are plotted
}
  \item{\dots}{
optional graphical parameters
}
}
\value{
One plot for each input, containing all design functions given in \code{runs}.
}

\examples{
# 1 functional input
s.d <- createSafiDesign(d.f = 1)
plot(s.d)

# 3 functional inputs
s.d <- createSafiDesign(d.f = 3)
s.d2 <- splitSafiDesign(s.d = s.d, new.split.points = list(c(0.5), c(0.25, 0.75), 
  c(0.25, 0.5, 0.75)))
plot(s.d2)
plot(s.d2, runs = 1:2)  # only first two runs 
}
