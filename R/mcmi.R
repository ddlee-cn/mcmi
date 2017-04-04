#' MCMI
#'
#' Calculate multivariable integration using Monte Carlo method
#'
#' @param Bounds: the bounds of x, y, z, as a vector of 2, 4 or 6 dimensions
#' @param Integrand: the integrand
#' @param Constrains: inequalities that x, y, z must satisfy
#'
#' @examples
#' mcmi(c(2,3, 3,4), x^2+y^2, x<y)
#'
#' @export
mcmi <- function(bounds, integrand, constrains)
{
}
