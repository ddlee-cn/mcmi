#' Monte Carlo Method for Multivariable Integration
#'
#' Calculate multivariable integration using Monte Carlo method, only support up to 3D currently, accuracy 0.005
#'
#' @param bounds: necessary, the bounds of x, y, z, as a vector of 2, 4 or 6 dimensions
#' @param integrand: optional, the integrand, input as character, must contains x, y, or z,   default: 1
#' @param constrains: optional, inequalities that x, y, z must satisfy, input as character, must contains x, y, or z, default: 1
#' @param n: number of random points, default 1,000,000,
#'
#' @examples
#' mcmi(c(-1,1, -1,1), 1, "x^2+y^2<1")
#' (-1<x<1, -1<y<1)
#'
#' mcmi(c(0,1, 1,2, -1,3), 1, c("exp(x)<y", "sin(z)*y>=0")
#' (0<x<1, 1<y<2, -1<3)
#'
#' mcmi(c(0,1), "exp(x)")
#' (0<x<1)
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

    area <- calculate_area(bounds)
    rands <- sampling(bounds, n)
    integration <- calculate(rands, area, integrand, constrains)

    return(integration)

}
