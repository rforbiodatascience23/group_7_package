#' Barplot for unique characters
#'
#' @param aa_sequence this is a string of characters, in our case a sequence of amino acids
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @return The function will return a barplot showing occurence of each character or amino acid
#' @export
#'
barplot_unique_chars <- function(aa_sequence){
  unique_AAs <- aa_sequence |>
# using stringr, it splits the aa_sequence into a list of one letter
# which means a list of amino acids
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |> # changes the class to character
    unique() # returns a vector with no duplicates


# creates a dataframe where it counts the occurence of each amino acid in aa_sequence
  counts <- sapply(unique_AAs, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame()

# giving column and row names
  colnames(counts) <- c("Counts")
  counts[["AAsequence"]] <- rownames(counts)

# plotting
  barplot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AAsequence, y = Counts, fill = AAsequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(barplot)
}
