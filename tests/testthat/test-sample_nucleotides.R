test_that("sample_nucleotides", {
  expect_equal(nchar(sample_nucleotides(10)), 10)
})
