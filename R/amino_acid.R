# Codon to amino acid function

#' translate
#'
#' @param codons 
#'
#' @return amino acid
#' @export
#'
#' @examples amino acid = translate("AAA")
translate <- function(codons){
  amino_acid <- paste0(codon_table[codons], collapse = "")
  return(amino_acid)
}