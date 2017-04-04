# check dimension
check_dim <- function(bounds)
{
    len <- length(bounds)
    if (len%%2!=0 || len>6){
        stop("invalid bounds input, only vectors with 2, 4, 6 dimension accepted.")
    }
    return(length(bounds)/2)

}

