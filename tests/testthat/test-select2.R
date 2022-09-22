test_that("select() works with indeces", {
  df <- select2(iris, 1:3)
  expect_s3_class(df, "data.frame")
  expect_equal(df, iris[1:3])
})

test_that("select() works with characters", {
    df <- select2(iris, c("Sepal.Length", "Sepal.Width"))
    expect_s3_class(df, "data.frame")
    expect_equal(df, iris[c("Sepal.Length", "Sepal.Width")])
})


