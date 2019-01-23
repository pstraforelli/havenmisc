# havenmisc
A collections of functions related to the haven package but not worthwhile to belong there

For now, there is only one function avaialble, `labels_df()`. It takes a data frame imported using `haven::read_sav()` as input, and returns a data frame with the variable names and the labels meta data attached to each variable. 

    gss_data <- haven::read_sav(system.file("extdata", "GSS2016.sav", package = "havenmisc"))
    labels_df(gss_data)