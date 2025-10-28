test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

dna_to_rna(c("ATGCTTAGGCGT", "TTTGGGAAA"))
dna_to_rna("ATGUUUUUAGCGT")
dna_to_rna("ATGTTTTTGGGGGAAAAGCGT")
