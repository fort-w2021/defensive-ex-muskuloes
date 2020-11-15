library(testthat)

context("checking lag")

test_that("first argument is a vector", {
  expect_equal(lag(c(1, 2)), c(NA, 1))
  expect_error(
    lag(as.matrix(c(1, 2))),
  )
  expect_error(
    lag(as.list(mtcars)),
  )
  expect_error(
    lag(mtcars),
  )
})

test_that("lag, second argument, is valid", {
  expect_equal(lag(c(1, 2, 3), 2), c(NA, NA, 1))
  expect_error(lag(c(1, 2), 3))
  expect_error(lag(c(1, 2), -3))
})
