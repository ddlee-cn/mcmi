# generate random points
# INPUT
# bounds, dim, n points
sampling <- function(bounds, n)
{
    if(missing(n)){
        n = 1000000
    }
    dim = length(bounds)/2
    rand = c()
    i = 0
    while(dim>i){
        rand = c(rand, runif(n, min=bounds[2*i+1], max=bounds[2*(i+1)]))
        i = i + 1
    }
    return(matrix(rand, nrow=dim, byrow=TRUE))
}
