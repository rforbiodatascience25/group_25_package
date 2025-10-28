
#' Codons to sequence of aa
#'
#' Translates a vector of codons into an aminoacid sequence
#'
#' This function takes a vector of RNA codons and translates them into a
#' single aa sequence, using the codon table
#'
#' @param codons character vector of RNA codons
#'
#' @returns string representing the translated aa sequence
#' @export
#'
#' @examples
#' codons_to_proteins("AGU")
#'
#' codons <- c("AUG", "UUU", "AGA")
#' codons_to_proteins(codons)
#'
codons_to_proteins <- function(codons) {
  protein_sequence <- paste0(codo[codons], collapse = "")
  return(protein_sequence)
}
