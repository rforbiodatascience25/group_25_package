#' Plot number of aa in a sequence
#'
#' la la la
#'
#' @param sequence_aa string of amino acids
#'
#' @returns plot of number of aminoacids in a sequence
#' @export
#'
plot_count_aa <- function(sequence_aa){
  unique_aa <- sequence_aa |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = sequence_aa, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_Acids"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acids, y = Counts, fill = Amino_Acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
