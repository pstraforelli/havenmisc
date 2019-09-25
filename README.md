
# havenmisc

A collections of functions related to the [haven
package](http://haven.tidyverse.org/reference/index.html), but not
worthwhile to belong there. They will therefore live here instead.

## Installation

You can install forcatsmisc from github with:

``` r
# install.packages("remotes")
remotes::install_github("pstraforelli/havenmisc")
```

## Examples

### labels\_df()

For now, there is only one function avaialble, `labels_df()`. It takes a
data frame imported using `haven::read_sav()` as input, and returns a
data frame with the variable names and the labels meta data attached to
each variable.

``` r
gss_data <- haven::read_sav(system.file("extdata", "GSS2016.sav", package = "havenmisc"))
havenmisc::labels_df(gss_data)
#> # A tibble: 5 x 2
#>   name        label                                                        
#>   <chr>       <chr>                                                        
#> 1 SATJOBHV    Job satisfaction                                             
#> 2 SECTOR      Type of college respondent attended                          
#> 3 EFTOTLT     Total number of students enrolled in college respondent atte~
#> 4 BARATE      Rate of BA degree earning in college respondent attended     
#> 5 GRADTOUNDER Ratio of graduate students to undergraduate students in coll~
```
