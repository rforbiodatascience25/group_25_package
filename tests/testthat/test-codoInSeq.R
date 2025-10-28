test_that("Splits properly", {
  expect_equal(codoInSeq("UUUUCUUAU", 1), c("UUU","UCU","UAU"))
  expect_equal(codoInSeq("UUUUCUUA", 1), c("UUU","UCU"))
})
test_that("Starts properly", {
  expect_equal(codoInSeq("UUUUCUUAU", 2), c("UUU","CUU"))
  expect_equal(codoInSeq("UUUUCUUA", 4), c("UCU"))
})
