% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vi_permute.R
\name{vi_permute}
\alias{vi_permute}
\alias{vi_permute.default}
\title{Permutation-Based Variable Importance}
\usage{
vi_permute(object, ...)

\method{vi_permute}{default}(object, feature_names, train,
  pred_fun = stats::predict, obs, metric = "auto", pos_class = NULL,
  progress = "none", parallel = FALSE, paropts = NULL, ...)
}
\arguments{
\item{object}{A fitted model object (e.g., a \code{"randomForest"} object).}

\item{...}{Additional optional arguments. (Currently ignored.)}

\item{feature_names}{Character string giving the names of the predictor
variables (i.e., features) of interest.}

\item{train}{Optional data frame containing the original training data.}

\item{pred_fun}{Optional prediction function that requires two arguments,
\code{object} and \code{newdata}. If specified, then the function must return
a vector of predictions (i.e., not a matrix or data frame). (In the future,
this argument may become optional.)}

\item{obs}{Non-optional vector containing the original (i.e., training)
response values.}

\item{metric}{Non-optional function for computing model performance (e.g.,
RMSE for regression or accuracy for binary classification). This function
requires two arguments, \code{pred} (for predicted values) and \code{obs}
(for observed values), and should return a single, numeric value.}

\item{pos_class}{Character string specifying which category in `obs`
represents the "positive" class (i.e., the class for which the predicted
class probabilties correspond to). Only needed for binary classification
problems.}

\item{progress}{Character string giving the name of the progress bar to use.
See \code{\link[plyr]{create_progress_bar}} for details. Default is
\code{"none"}.}

\item{parallel}{Logical indicating whether or not to run \code{vi_permute()}
in parallel (using a backend provided by the \code{foreach} package). Default
is \code{FALSE}. If \code{TRUE}, an appropriate backend must be provided by
\code{foreach}.}

\item{paropts}{List containing additional options to be passed onto
\code{foreach} when \code{parallel = TRUE}.}
}
\value{
A tidy data frame (i.e., a \code{"tibble"} object) with two columns:
\code{Variable} and \code{Importance}. For \code{"glm"}-like object, an
additional column, called \code{Sign}, is also included which gives the sign
(i.e., POS/NEG) of the original coefficient.
}
\description{
Compute permutation-based variable importance scores for the predictors in a
model. (This function is meant for internal use only.)
}
\details{
Coming soon!
}
