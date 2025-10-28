#' codoInSeq
#'
#' @param sequence this is the base sequence to get codons from
#' @param start this is point in sequence from which we start getting codons
#'
#' @returns these are the codons in sequence from selected starting point
#' @export
#'
#' @examples
#'x <- "UUUUCUUAUUGUUUCUCCUACUGCUUAUCAUAAUGAUUGUCGUAGUGGCUUCCUCAUCGUCUCCCCCAC"
#'codoInSeq(x, start = 1)
#'codoInSeq(x, start = 2)
codoInSeq <- function(sequence, start = 1){
  lengthSeq <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = lengthSeq-3+1, by = 3),
                      last = seq(from = 3+start-1, to = lengthSeq, by = 3))
  return(codons)
}
