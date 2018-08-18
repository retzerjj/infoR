#' Posterior Beta Variance
#'
#' This function calculates posterior beta coefficeint variance prior var, SSX and true variance
#' @param priorVar Variance of prior distribution
#' @param ss.x     Sum of square deviations of X from its mean
#' @param trueVar  Hypothesised true variance
#' @examples
#' HR.x <- c(94,96,94,95,104,106,108,113,115,121,131)
#' O2.y <- c(0.47,0.75,0.83,0.98,1.18,1.29,1.40,1.60,1.75,1.90,2.23)
#' SS.x1 <- t(as.vector(HR.x-mean(HR.x)))%*%(as.vector(HR.x-mean(HR.x))); SS.x1
#' PostVar <- postBetaVar(1,SS.x1,.0169); PostVar


 postBetaVar <- function(priorVar, ss.x, trueVar) {postBvar <- 1/((1/priorVar) + (ss.x/trueVar)); postBvar}

