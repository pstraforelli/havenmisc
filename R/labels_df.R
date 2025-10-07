#' Create a data frame of the variable labels
#'
#' @param df A data frame imported from SPSS using `haven::read_sav()`
#'
#' @return A data frame with 2 columns, listing the names of the variables and the corresponding labels from the metadata.
#' @importFrom labelled var_label
#' @importFrom purrr flatten_df
#' @importFrom purrr map_int
#' @importFrom tidyr pivot_longer
#' @importFrom dplyr everything
#' @importFrom tibble add_column
#' @export
#'
#' @examples
#' gss_data <- haven::read_sav(system.file("extdata", "GSS2016.sav", package = "havenmisc"))
#' labels_df(gss_data)

labels_df <- function(df) {
  counts <- map_int(names(df), function(x) {
    v <- df[[x]]
    
    length(v[!is.na(v)])
    })
  
  df |> 
    var_label(null_action = "na") |> 
    flatten_df() |> 
    pivot_longer(everything(), names_to = "name", values_to = "label") |> 
    add_column(counts = counts)
}
