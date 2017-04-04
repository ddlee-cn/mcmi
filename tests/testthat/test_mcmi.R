library(testthat)
library(mcmi)

test_that("test mcmi wrapper", {
    accuracy = 0.005
    expect_equal(mcmi(c(1,2)), 1)
    expect_equal(mcmi(c(1,1.5,2,4), 2), 2)

    expect_equal(abs(mcmi(c(0,1),"exp(x)")-exp(1)+1)<accuracy, TRUE)

    expect_equal(abs(mcmi(c(-1,1, -1,1), 1, "x^2+y^2<1")-3.141592)<accuracy, TRUE)
    expect_equal(abs(mcmi(c(0,1,1,2,-1,3), 1, c("exp(x)<y", "sin(z)*y>=0"))-1.1587)<accuracy, TRUE)
    expect_equal(abs(mcmi(c(1,3,-1,4), 1, c("x^3+y^3<=29", "y>=exp(x)-2"))-0.7580)<accuracy, TRUE)
    expect_equal(abs(mcmi(c(0,1, 0,1, 0,1), 1, c("x^2+sin(y)<=z", "x-z+exp(x)<=1"))-0.1585)<accuracy, TRUE)
})
