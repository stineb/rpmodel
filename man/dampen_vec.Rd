% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subroutines.R
\name{dampen_vec}
\alias{dampen_vec}
\title{Dampen inputs of rpmodel}
\usage{
dampen_vec(vec, tau)
}
\arguments{
\item{vec}{A numeric vector for the time series of a daily meteorological
variable used as input for \code{rpmodel} (temperature, 
vapour pressure deficit, CO2, or atmospheric pressure). The length of
\code{x} must be at least 365, i.e., corresponding to one year.}

\item{tau}{The time scale of dampening (e-folding time scale of a 
perturbation). Must be smaller or equal to 365 d.}
}
\value{
A numeric vector of equal length as \code{x} with damped variation.
 The dampening is calculated as:
 \deqn{
  S(t+1) - S(t) = (X(t+1) - S(t)) / \tau
 }
 Where \eqn{X} is the daily varying time series given by argument \code{x},
 \eqn{S} is the dampened time returned by this function, and \eqn{\tau} is 
 the decay time scale of a perturbation, given by argument \code{tau}.
}
\description{
Applies an exponential dampening input time series with specified time scale.
}
\examples{
\dontrun{
dampen_vec(
 vec = 20 * (sin(doy*pi/(365)))^2 + rnorm(365, mean = 0, sd = 5),
 tau = 40 
 )
}
}
