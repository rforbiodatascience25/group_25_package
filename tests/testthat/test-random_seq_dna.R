test_that("random_seq_dna generates string of correct length", {
  expect_equal(nchar(random_seq_dna(10)), 10)
  expect_equal(nchar(random_seq_dna(50)), 50)
})

test_that("random_seq_dna output contains only valid nucleotides", {
  dna <- random_seq_dna(100)
  valid_nucleotides <- c("A", "T", "G", "C")
  dna_chars <- strsplit(dna, "")[[1]]
  expect_true(all(dna_chars %in% valid_nucleotides))
})
