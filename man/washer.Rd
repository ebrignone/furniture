\name{washer}
\alias{washer}
\title{Washer of Missing Data}
\description{
Washes the data by replacing values with either NA's or other values set by the user. Useful for replacing values such as 777's or 999's that represent missing values in survey research.
}
\usage{
washer(x, ..., value = NA)
}
\arguments{
  \item{x}{
 the variable to have values adjusted
}
  \item{\dots}{
 the values in the variable that are to be replaced by either NA's or the value set by the user. Can be a function (or multiple functions) to specify values to change (e.g., \code{is.nan()}, \code{is.na()}). 
}
  \item{value}{
 (optional) if specified, the values in \code{...} will be replaced by this value (must be a single value)
}
}
\details{
 The function is written so it can be used within the \code{apply()} family of functions over several variables at once.
}
\value{
Returns the variable with the values adjusted
}

\author{
Tyson S. Barrett
}


\seealso{
\code{\link{mirror}}
}
\examples{

x = c(1:20, NA, NaN)

washer(x, 9, 10)
washer(x, 9, 10, value=0)
washer(x, 1:10)
washer(x, is.na, is.nan, value=0)
washer(x, is.na, is.nan, 1:3, value=0)

}


\keyword{ missing }
\keyword{ fix }
