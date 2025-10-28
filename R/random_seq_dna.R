
#' Random DNA sequence generator with size input
#'
#' @param dna_size Size of the DNA sequence that will be generated
#'
#' @returns It is a single character string formed by joining all elements of the random generated DNA with size dna_size
#' @export
#'
#' @examples
#' random_seq_dna(dna_size = 10)
#' random_seq_dna(dna_size = 50)
random_seq_dna <- function(dna_size){
  dna_seq_generator <- sample(c("A", "T", "G", "C"), size = dna_size, replace = TRUE)
  concat_dna_seq <- paste0(dna_seq_generator, collapse = "")
  return(concat_dna_seq)
  }
