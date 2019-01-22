#' Create a data frame of the variable labels
#'
#' @param df A data frame imported from SPSS using `haven::read_sav()`
#'
#' @return A data frame with 2 columns, listing the names of the variables and the corresponding labels from the metadata.
#' @export
#'
#' @examples
#' gss_data <- haven::read_sav(system.file("extdata", "GSS2016.sav", package = "havenmisc"))
#' labels_df(gss_data)

labels_df <- function(df) {
  labels <- labelled::var_label(df)
  long_df <- purrr::flatten_df(labels) 
  output <- tidyr::gather(long_df, key = !! rlang::sym("name"), value = !! rlang::sym("label"))
  output
}
