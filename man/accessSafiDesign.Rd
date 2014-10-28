\name{accessSafiDesign}
\alias{accessSafiDesign}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print functional input design as convenient matrix
}
\description{
The functional input design is printed at a chosen number of time points to allow for data transfer to the output model.
}
\usage{
accessSafiDesign(s.d, n.timepoints)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{s.d}{
\code{safidesign}-object
}
  \item{n.timepoints}{
number of desired time points at which to evaluate the functions, either one value (the same number for all inputs) or a vector of length  \code{d.f} (different numbers for the inputs) 
}
}
\value{
List of matrices of input design functions (one for each input)
}
\examples{
# 1 functional input
s.d <- createSafiDesign(d.f = 1)
s.d2 <- splitSafiDesign(s.d = s.d, new.split.points = list(c(0.25, 0.75)))
accessSafiDesign(s.d2, n.timepoints = 20)

# 3 functional inputs
s.d <- createSafiDesign(d.f = 3)
s.d2 <- splitSafiDesign(s.d = s.d, new.split.points = list(c(0.5), c(0.25, 0.75), 
  c(0.25, 0.5, 0.75)))
accessSafiDesign(s.d = s.d2, n.timepoints = c(2, 4, 10)) 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
