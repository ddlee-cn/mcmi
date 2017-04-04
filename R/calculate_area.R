# calculate_area.R
# calculate total area based on bounds
calculate_area <- function(bounds)
{
    dim <- length(bounds)/2
    area = 1
    for ( i in 1:dim){
        area = area * (bounds[2*i]-bounds[2*i-1])
    }
    return(area)
}
