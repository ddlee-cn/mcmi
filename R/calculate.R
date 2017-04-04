# Calculate integrations
# INPUT:
# rands: random points as a matrix
# with dim rows and n cloumns
# integrand: the integrand expression
# constrains: inequalities which variables should satisfy
calculate <- function(rands, area, integrand, constrains)
{
    n <- dim(rands)[2]
    dim <- dim(rands)[1]
    x <- rands[1,]
    if (dim>1){y <- rands[2,]}
    if (dim>2){z <- rands[3,]}

    # eval constrains
    c_num <- length(constrains)
    constrains_eval = rep(1, n)
    for (i in 1:c_num){
        constrains_eval = constrains_eval*eval(parse(text=constrains[i]))
    }

    return(area * sum(eval(integrand)*constrains_eval)/n)



}
