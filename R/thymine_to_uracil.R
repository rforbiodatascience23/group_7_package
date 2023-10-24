#' From DNA to RNA by substituting thymine with uracil.
#'
#' @param DNA String of nucleotides: "A", "T", "G", "C". 
#'
#' @return String of nucleotides: "A", "U", "G", "C".
#' @export
#'
#' @examples DNA <- sample(c("A", "T", "G", "C"), size=10, replace=TRUE)
thymine_to_uracil <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}