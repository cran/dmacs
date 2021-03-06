% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MeasEquiv_EffectSize_Base.R
\name{item_dmacs}
\alias{item_dmacs}
\title{dmacs measurement nonequivalence effect size}
\usage{
item_dmacs(LambdaR, ThreshR, LambdaF, ThreshF, MeanF, VarF, SD,
  categorical = FALSE, stepsize = 0.001)
}
\arguments{
\item{LambdaR}{is the factor loading of the item onto the factor of
interest for the reference group.}

\item{ThreshR}{is the indicator intercept (for continuous
indicators) or a vector of thresholds (for
categorical indicators) for the reference group.}

\item{LambdaF}{is the factor loading of the item onto the factor of
interest for the focal group.}

\item{ThreshF}{is the indicator intercept (for continuous
indicators) or a vector of thresholds (for
categorical indicators) for the focal group.}

\item{MeanF}{is the factor mean in the focal group}

\item{VarF}{is the factor variances in the focal group.}

\item{SD}{is the indicator standard deviations to be used as
the denominator of the dmacs effect size. This will usually either be
pooled standard deviation for the indicator or the standard deviation
for the indicator in the reference group.}

\item{categorical}{is a Boolean variable declaring whether the variables
in the model are ordered categorical. Models in which some variables are
categorical and others are continuous are not supported. If no value is
provided, categorical defaults to \code{FALSE}, although if a vector of
thresholds are provided, categorical will be forced to
\code{TRUE}. A graded response model with probit link (e.g., DWLS in
lavaan or WLSMV in Mplus) is used for categorical variables. If you desire
for other categorical models (e.g., IRT parameterization) to be supported,
e-mail the maintainer.}

\item{stepsize}{is the interval width for the Riemann sum used to estimate
the integral in equation 3 of Nye & Drasgow (2011). Default value is .001.
A larger value can be used for faster performance; accuracy is
excellent at \code{stepsize = .01} in my simulations.}
}
\value{
The dmacs effect size of equation 3 of Nye & Drasgow (2011).
}
\description{
\code{item_dmacs} computes the dmacs effect size for a single indicator
relative to a single factor in a single focal group
}
\details{
\code{item_dmacs} is called by \code{dmacs_summary_single}, which
in turn is called by \code{\link{lavaan_dmacs}} and
\code{\link{mplus_dmacs}}, which are the only functions in this
package intended for casual users
}
\section{References}{

Nye, C. & Drasgow, F. (2011). Effect size indices for analyses of
measurement equivalence: Understanding the practical importance of
differences between groups. \emph{Journal of Applied Psychology, 96}(5),
966-980.
}

\examples{
LambdaF <- 0.74
LambdaR <- 0.76
ThreshF <- 1.28
ThreshR <- 0.65
MeanF   <- 0.21
VarF    <- 1.76
SD      <- 1.85
item_dmacs(LambdaR, ThreshR, LambdaF, ThreshF, MeanF, VarF, SD)

}
