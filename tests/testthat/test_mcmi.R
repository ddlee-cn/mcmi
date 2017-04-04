library(testthat)
library(mcmi)

test_that("test checkdim",
{
    expect_equal(checkdim(c(1,2)),  1)
    expect_equal(checkdim(c(1,2,3,4)), 2)
    expect_equal(checkdim(c(1,2,3,4,5,6)), 3)

    expect_error(checkdim(c(1,2,3)))
})

test_that("verify sampling dimensions",
{
    test_2_bounds = c(1,2,3,4)
    test_3_bounds = c(1,2,3,4,5,6)
    test_n = 100

    expect_equal(dim(sampling(test_2_bounds, test_n))[1], 2)
    expect_equal(dim(sampling(test_2_bounds, test_n))[2], test_n)
    expect_equal(dim(sampling(test_3_bounds, test_n))[1], 3)
})