\name{visual.test}
\alias{visual.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Visual test of association
}
\description{
Builds a matrix of 4 scatterplots
}
\usage{
visual.test(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{y}{
%%     ~~Describe \code{y} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, y) 
{
    oldpar <- par(no.readonly = TRUE)
    par(mar = c(0, 0, 0, 0))
    m <- matrix(sample(1:4), 2, 2)
    layout(m, 1, 1)
    plot(x, y, pch = 20)
    abline(0, 0, col = "red", lwd = 1)
    for (i in 1:3) {
        plot(x, sample(y), pch = 20)
        abline(0, 0, col = "red", lwd = 1)
    }
    par(oldpar)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
