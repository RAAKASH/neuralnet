\name{plot.nn}
\alias{plot.nn}
\title{  Plot method for neural networks  }
\description{
  \code{plot.nn}, a method for the \code{plot} generic. It is designed
  for an inspection of the weights for objects of class \code{nn}, typically produced by \code{neuralnet}. 
}
\usage{
    \method{plot}{nn}(x, rep = NULL, x.entry = NULL, x.out = NULL,
        radius = 0.15, arrow.length = 0.2, intercept = TRUE, 
        intercept.factor = 0.4, information = TRUE,
        information.pos = 0.1, col.entry.synapse = "black",
        col.entry = "black", col.hidden = "black",
        col.hidden.synapse = "black", col.out = "black",
        col.out.synapse = "black", col.intercept = "blue",
        fontsize = 12, dimension = 6, show.weights = TRUE,
        file = NULL, \dots)
}
\arguments{
  \item{x}{ an object of class \code{nn} }
  \item{rep}{ repetition of the neural network. If rep="best", the repetition with the smallest error will be plotted. If not stated all repetitions will be plotted, each in a separate window. }
  \item{x.entry}{ x-coordinate of the entry layer. Depends on the arrow.length in default. }
  \item{x.out}{ x-coordinate of the output layer. }
  \item{radius}{ radius of the neurons. }
  \item{arrow.length}{ length of the entry and out arrows. }
  \item{intercept}{ a logical value indicating whether to plot the intercept. }
  \item{intercept.factor}{ x-position factor of the intercept. The closer the factor is to 0, the closer the intercept is to its left neuron. }
  \item{information}{ a logical value indicating whether to add the error and steps to the plot. }
  \item{information.pos}{ y-position of the information. }
  \item{col.entry.synapse}{ color of the synapses leading to the input neurons. }
  \item{col.entry}{  color of the input neurons. }
  \item{col.hidden}{  color of the neurons in the hidden layer. }
  \item{col.hidden.synapse}{ color of the weighted synapses. }
  \item{col.out}{ color of the output neurons. }
  \item{col.out.synapse}{ color of the synapses leading away from the output neurons. }
  \item{col.intercept}{ color of the intercept. }
  \item{fontsize}{ fontsize of the text. }
  \item{dimension}{ size of the plot in inches. }
  \item{show.weights}{ a logical value indicating whether to print the calculated weights above the synapses. }
  \item{file}{ a character string naming the plot to write to. If not stated, the plot will not be saved. }
  \item{\dots}{ arguments to be passed to methods, such as graphical parameters (see \code{\link{par}}). }
}

\author{ Stefan Fritsch, Frauke Guenther \email{guenther@bips.uni-bremen.de} }

\seealso{\code{\link{neuralnet}}}
\examples{
XOR <- c(0,1,1,0)
xor.data <- data.frame(expand.grid(c(0,1), c(0,1)), XOR)
print(net.xor <- neuralnet( XOR~Var1+Var2, xor.data, hidden=2, rep=5))
plot(net.xor, rep="best")
}
\keyword{ neural }
