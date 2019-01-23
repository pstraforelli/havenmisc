# havenmisc
A collections of functions related to the haven package but not worthwhile to belong there

For now, there is only one function avaialble, `labels_df()`. It takes a data frame imported using `haven::read_sav()` as input, and returns a data frame with the variable names and the labels meta data attached to each variable. 

    gss_data <- haven::read_sav(system.file("extdata", "GSS2016.sav", package = "havenmisc"))
    labels_df(gss_data)
    
    # A tibble: 5 x 2
      name        label                                                                              
      <chr>       <chr>                                                                              
    1 SATJOBHV    Job satisfaction                                                                   
    2 SECTOR      Type of college respondent attended                                                
    3 EFTOTLT     Total number of students enrolled in college respondent attended                   
    4 BARATE      Rate of BA degree earning in college respondent attended                           
    5 GRADTOUNDER Ratio of graduate students to undergraduate students in college respondent attended