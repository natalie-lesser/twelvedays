#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import english
#'
#' @export

#pluralize_gift <- function(gift){

#gift <- gift %>%
  str_replace()

#return(gift)

#}

#step 1

  pluralize_gift <- function(gift){
    gift = case_when(
      str_detect(gift, "oo") ~ str_replace(gift, "oo", "ee"),
      str_detect(gift, "y") ~ str_replace(gift, "y", "ies"),
      TRUE ~ paste0(gift, "s")
    )
  }



