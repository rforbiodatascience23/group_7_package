#' seq_to_codons
#'
#' @param nucleotide_seq String/character of nucleotide sequence
#' @param start Position of the first nucleotide to part into codons. Default is pos 1, parting the whole sequence into codons.
#'
#' @return Takes a string/character of nucleotide sequence and returns a list of codons in the sequence. You can chose to start the slicing of the sequence after the 1st position, if defining new value for start.
#' @export
#'
#' @examples nucleotide_seq <- "gaccagatcgataggcggcaatttgaacgctgagaacatcatccggatgtccgctcccgtgtttgtctcagctttgtgcagtcagtgggagggtgttcccaacgactctccgccttttgacttctaaagggttctaggcttccaatcatgtcgccccagcttttccgagaacgatggtattttcggggggggcttcacgttctgtggagaatatcactgtatgtcgatctaggacggcaacttctggaatcaccgattacgtcggcagactgtcatacctgaaacggattccagacgcatagacggcttgcatctggggcggcagaaatatggtcgagactccgacccgagcttgcgggc"
#' seq_to_codons(nucleotide_seq)
seq_to_codons <- function(nucleotide_seq, start = 1){
  seq_length <- nchar(nucleotide_seq)
  codons <- substring(nucleotide_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}

