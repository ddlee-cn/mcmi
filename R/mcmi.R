#' MCMI
#'
#' Calculate multivariable integration using Monte Carlo method
#'
#' @param Bounds: the bounds of x, y, z, as a vector of 2, 4 or 6 dimensions
#' @param Integrand: the integrand, default: 1
#' @param Constrains: inequalities that x, y, z must satisfy, default: 1
#' @param n: number of random points, default 1,000,000,
#'
#' @examples
#' mcmi(c(-1,1, -1,1), 1, "x^2+y^2<1")
#' mcmi(c(0,1, 1,2, -1,3), 1, c("exp(x)<y", "sin(z)*y>=0")
#'
#' mcmi(c(0,1), "exp(x)")
#'
#' @export
mcmi <- function(bounds, integrand, constrains, n)
{
    # hanled inputs
    if(missing(integrand)){integrand<-1}
    if(missing(constrains)){constrains<-TRUE}
    if(missing(n)){n<-1000000}
    dim <- check_dim(bounds)
    integrand <- check_integrand(integrand)
    constrains <- check_constrains(constrains)

    rands <- sampling(bounds, n)
    area <- calculate_area(bounds)
    integration <- calculate(rands, area, integrand, constrains)

    return(integration)

}
