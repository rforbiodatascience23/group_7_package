#' seq_to_codons
#'
#' @param aa_seq String/character of amino acid code
#' @param start Position of the first amino acid to part into codons. Default is pos 1, parting the whole sequence into codons.
#'
#' @return Takes a string/character of amino acid code and returns a list of codons in the sequence. You can chose to start the slicing of the sequence after the 1st position, if defining new value for start.
#' @export
#'
#' @examples aa_seq <- "gaccagatcgataggcggcaatttgaacgctgagaacatcatccggatgtccgctcccgtgtttgtctcagctttgtgcagtcagtgggagggtgttcccaacgactctccgccttttgacttctaaagggttctaggcttccaatcatgtcgccccagcttttccgagaacgatggtattttcggggggggcttcacgttctgtggagaatatcactgtatgtcgatctaggacggcaacttctggaatcaccgattacgtcggcagactgtcatacctgaaacggattccagacgcatagacggcttgcatctggggcggcagaaatatggtcgagactccgacccgagcttgcgggc"
#' seq_to_codons(aa_seq)
seq_to_codons <- function(aa_seq, start = 1){
  seq_length <- nchar(aa_seq)
  codons <- substring(aa_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}

