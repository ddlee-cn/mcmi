# check_constrains.R
# Check whether constrains can be evaluated
check_constrains <- function(constrains)
{
    x=1
    y=1
    z=1
    c_num <- length(constrains)
    for (i in 1:c_num){
        try_result = try(eval(parse(text=constrains[i])), silent=TRUE)
        if (class(try_result)=="try-error" ){
            stop("evaluation failed at (x=1, y=1, z=1), please check input of constrains.")
        }
        if (class(try_result)!= "logical"){
            stop("evaluation of constrain is not logical.")
        }
    }
    return(constrains)
}
