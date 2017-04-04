library(testthat)
library(mcmi)

test_that("verify sampling dimensions",
{
    test_2_bounds = c(1,2,3,4)
    test_3_bounds = c(1,2,3,4,5,6)
    test_n = 100

    expect_equal(dim(sampling(test_2_bounds, test_n))[1], 2)
    expect_equal(dim(sampling(test_2_bounds, test_n))[2], test_n)
    expect_equal(dim(sampling(test_3_bounds, test_n))[1], 3)
})

test_that("test area calculation",
{
    test_1_bounds = c(1,2)
    test_2_bounds = c(1,2,3,4)
    test_3_bounds = c(1,2,3,4,5,6)

})

test_that("test ingration calculation",
{
    test_rands=matrix(c(runif(10, 1, 2), runif(10, 2, 3), runif(10, 3, 4)), nrow=3, byrow=TRUE)
    expect_equal(calculate(test_rands, 1, 1, 1), 1)
})
