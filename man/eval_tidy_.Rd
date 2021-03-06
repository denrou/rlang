% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lifecycle-retired.R
\name{eval_tidy_}
\alias{eval_tidy_}
\title{Tidy evaluation in a custom environment}
\usage{
eval_tidy_(expr, bottom, top = NULL, env = caller_env())
}
\arguments{
\item{expr}{An expression to evaluate.}

\item{bottom}{The environment containing masking objects if the
data mask is one environment deep. The bottom environment if the
data mask comprises multiple environment.}

\item{top}{The last environment of the data mask. If the data mask
is only one environment deep, \code{top} should be the same as
\code{bottom}.}

\item{env}{The environment in which to evaluate \code{expr}.}
}
\description{
This function is soft-deprecated as of rlang 0.2.0.
}
\keyword{internal}
