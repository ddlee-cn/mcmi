library(testthat)
library(mcmi)

test_that("test check_dim",
{
    expect_equal(check_dim(c(1,2)),  1)
    expect_equal(check_dim(c(1,2,3,4)), 2)
    expect_equal(check_dim(c(1,2,3,4,5,6)), 3)

    expect_error(check_dim(c(1,2,3)))
})


test_that("test check_integrand",
{
    expect_equal(class(check_integrand("x^2")), "expression")
    expect_equal(class(check_integrand(3)), "numeric")
    expect_equal(check_integrand(3), 3)

    expect_error(check_integrand("a*b"))
    expect_error(check_integrand(c(1,2)))
})


