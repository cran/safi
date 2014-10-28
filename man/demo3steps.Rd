\name{demo3steps}
\alias{demo3steps}
\docType{data}
\title{
Demo of \code{safi}
}
\description{
Demo of a complete sequential sensitivity analysis with 2 functional and 1 scalar input in three sequential steps.}
\details{
The procedure is performed on an artificial underlying function with two functional inputs \eqn{g1} and \eqn{g2} and one scalar input \eqn{x}.

\deqn{ f(g1,g2,x) = \int_0^{1/3}(3-9t)g1(t)dt 
    -   \int_{3/10}^1[1/30 g2(t)+3]^{3}dt
    + 8/10 \sin(x)}
  
The linear influences to detect are: 

for g1: decreasing positive influence in the beginning, then no influence 

for g2: no influence in the beginning, then constant negative influence 

for x: positive influence

The demo shows how the three inputs are analysed in three sequential steps in which the space of the two functional inputs is divided more and more. After the third step, it reveals the linear influences listed above.
}
\keyword{datasets}
