test_that("filter2() works with logical vectors", {
  df <- filter2(iris, c(TRUE, FALSE))
  expect_s3_class(df, "data.frame")
  expect_equal(filter2(iris, iris$Species == "setosa"), 
               dplyr::filter(iris, Species == "setosa"))
})
