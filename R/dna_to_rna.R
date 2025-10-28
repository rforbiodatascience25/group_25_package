
#' Transcription
#'
#' Conversion of a DNA sequence to a RNA
#' The function converts a DNA sequence (input) to a RNA sequence by
#' replacing the T with a U
#'
#' @param dna_sequence character string of DNA sequence
#'
#' @returns character string of RNA sequence with U instead of T
#' @export
#'
#' @examples
#' dna_to_rna("ATGC")
#' dna_to_rna(c("ATGCTTAGGCGT", "TTTGGGAAA"))
#'
#'
dna_to_rna <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
