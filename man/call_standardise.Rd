% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/call.R
\name{call_standardise}
\alias{call_standardise}
\title{Standardise a call}
\usage{
call_standardise(call, env = caller_env())
}
\arguments{
\item{call}{Can be a call or a quosure that wraps a call.}

\item{env}{The environment where to find the \code{call} definition in
case \code{call} is not wrapped in a quosure.}
}
\value{
A quosure if \code{call} is a quosure, a raw call otherwise.
}
\description{
This is essentially equivalent to \code{\link[base:match.call]{base::match.call()}}, but with
experimental handling of primitive functions.
}
\section{Life cycle}{


In rlang 0.2.0, \code{lang_standardise()} was soft-deprecated and
renamed to \code{call_standardise()}. See lifecycle section in \code{\link[=call2]{call2()}}
for more about this change.
}

