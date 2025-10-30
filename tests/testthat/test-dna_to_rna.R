test_that("dna_to_rna converts T to U for a single sequence", {
  expect_equal(dna_to_rna("ATGCTTAGGCGT"), "AUGCUUAGGCGU")
})

test_that("dna_to_rna converts T -> U for multiple sequences", {
  expect_equal(
    dna_to_rna(c("ATGCTTAGGCGT", "TTTGGGAAA")),
    c("AUGCUUAGGCGU", "UUUGGGAAA")
  )
})

test_that("dna_to_rna handles sequences with many istances of T", {
  expect_equal(
    dna_to_rna("ATGTTTTTGGGGGAAAAGCGT"),
    "AUGUUUUUGGGGGAAAAGCGU"
  )
})
