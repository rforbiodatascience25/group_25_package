#single test case of two codons to amino acids
test_that("codons_to_proteins translates codons correctly", {
  expect_equal(codons_to_proteins(c("AUG", "AAU")), "MN")
})

test_that("codons_to_proteins handles stop codons", {
  expect_equal(codons_to_proteins(c("AUG", "UAA")), "M*")
})
