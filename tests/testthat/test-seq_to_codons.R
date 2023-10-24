nucleotide_testseq <- "gaccagatcgataggcggcaatttgaacgctgagaacatcatccggatgtccgctcccgtgtttgtctcagctttgtgcagtcagtgggagggtgttcccaacgactctccgccttttgacttctaaagggttctaggcttccaatcatgtcgccccagcttttccgagaacgatggtattttcggggggggcttcacgttctgtggagaatatcactgtatgtcgatctaggacggcaacttctggaatcaccgattacgtcggcagactgtcatacctgaaacggattccagacgcatagacggcttgcatctggggcggcagaaatatggtcgagactccgacccgagcttgcgggc"

test_that("seq_to_codons works_1", {
  expect_equal(seq_to_codons(nucleotide_testseq, start=1)[7], "caa")
})

test_that("seq_to_codons works_2", {
  expect_equal(seq_to_codons(nucleotide_testseq, start=1)[66], "cac")
})
