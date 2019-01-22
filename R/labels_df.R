#' Create a data frame of the variable labels
#'
#' @param df A data frame imported from SPSS using `haven::read_sav()`
#'
#' @return A data frame with 2 columns, listing the names of the variables and the corresponding labels from the metadata.
#' @export
#'
#' @examples

labels_df <- function(df) {
  labels <- labelled::var_label(df)
  long_df <- purrr::flatten_df(labels) 
  output <- tidyr::gather(long_df, key = name, value = label)
  output
}