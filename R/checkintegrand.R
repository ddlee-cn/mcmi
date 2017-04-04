# checkintegrand.R
# check whether integrand qualified to be integrated
check_integrand <- function(integrand)
{
    if(class(integrand) == "expression"){
        return(integrand)
    }
    else if(class(integrand) == "character"){
        return(parse(text=integrand))
    }
    else{
        error("not a valid integrand, only character or expression supported")
    }
}
