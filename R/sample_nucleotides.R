#' Create A Nucleotide Sample
#'
#' @param sample_size size of desired sample (an integer)
#'
#' @return a sample of nucleotides of size sample_size
#' @export
#'
#' @examples sample <- sample_nucleotides(10)
sample_nucleotides <- function(sample_size){
  separate_sample <- sample(c("A", "T", "G", "C"), size = sample_size, replace = TRUE)
  concat_sample <- paste0(separate_sample, collapse = "")
  return(concat_sample)
}
