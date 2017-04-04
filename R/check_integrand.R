# checkintegrand.R
# check whether integrand qualified to be integrated
check_integrand <- function(integrand)
{
    x=1
    y=1
    z=1

    if(is.character(integrand)==TRUE ){
        try_result = try(eval(parse(text=integrand)), silent=TRUE)
        if(class(try_result)=="try-error"){
        stop("integrand evaluation failed at (x=1, y=1, z=1). Please check input of integrand")
        }
        return(parse(text=integrand))
    }
    else if(is.numeric(integrand)==TRUE){
        if(length(integrand)>1){
            stop("integrand should be a number or an expression.")
        }
        return(integrand)
    }
    else{
        stop("not a valid integrand, only character with (x, y, z) or numeric supported")
    }

}
