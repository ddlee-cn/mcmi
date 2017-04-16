### Monte Carlo Method for Multivariable Integration

A toy R package to teach myself the process of developing R packages. Calculate and visualize Multiple Integral using Monte Carlo method. [View Demo](https://ddlee.shinyapps.io/mcmi_online)

#### Installation
```r
require(devtools)
devtools::install_github("ddlee96/mcmi")
```

#### Usage
```r
mcimi::mcmi(bounds, integrand, constrains, n)
mcmi::visualize(boungds, constrains)
```
##### Parameters
- bounds: the interval to calculate integral
- integrand: the integrand, like f(x) = x, default: 1
- constrains: the inequalities that variable should satisfy, default: 1
- n: the count of random points, default: 1,000,000

##### 1D Definite integral
```r
mcmi(c(0,1), "exp(x)")
```

##### Multiple integral
```r
mcmi(c(1,3,-1,4), "x*y+x", c("x^3+y^3<=29", "y>=exp(x)-2")
```

### Limits
- only support up to 3D
- only support x, y, z as variables
- accuracy not satisfying
