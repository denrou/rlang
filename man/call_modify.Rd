% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/call.R
\name{call_modify}
\alias{call_modify}
\title{Modify the arguments of a call}
\usage{
call_modify(.call, ..., .standardise = FALSE, .env = caller_env())
}
\arguments{
\item{.call}{Can be a call, a formula quoting a call in the
right-hand side, or a frame object from which to extract the call
expression.}

\item{...}{Named or unnamed expressions (constants, names or calls)
used to modify the call. Use \code{NULL} to remove arguments. Dots are
evaluated with \link[=dots_list]{explicit splicing}.}

\item{.standardise}{If \code{TRUE}, the call is standardised beforehand
to match existing unnamed arguments to their argument names. This
prevents new named arguments from accidentally replacing original
unnamed arguments.}

\item{.env}{The environment where to find the \code{call} definition in
case \code{call} is not wrapped in a quosure. This is passed to
\code{call_standardise()} if \code{.standardise} is \code{TRUE}.}
}
\value{
A quosure if \code{.call} is a quosure, a call otherwise.
}
\description{
Modify the arguments of a call
}
\section{Life cycle}{


In rlang 0.2.0, \code{lang_modify()} was soft-deprecated and renamed to
\code{call_modify()}. See lifecycle section in \code{\link[=call2]{call2()}} for more about
this change.
}

\examples{
call <- quote(mean(x, na.rm = TRUE))

# Modify an existing argument
call_modify(call, na.rm = FALSE)
call_modify(call, x = quote(y))

# Remove an argument
call_modify(call, na.rm = NULL)

# Add a new argument
call_modify(call, trim = 0.1)

# Add an explicit missing argument
call_modify(call, na.rm = quote(expr = ))

# Supply a list of new arguments with `!!!`
newargs <- list(na.rm = NULL, trim = 0.1)
call_modify(call, !!! newargs)

# Supply a call frame to extract the frame expression:
f <- function(bool = TRUE) {
  call_modify(call_frame(), splice(list(bool = FALSE)))
}
f()


# You can also modify quosures inplace:
f <- quo(matrix(bar))
call_modify(f, quote(foo))
}
\seealso{
lang
}
