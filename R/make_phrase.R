#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


make_phrase <- function(num, gift, verb, adjective, location){

  verb <- replace_na(verb, "")
  gift <- replace_na(gift, "")
  adjective <- replace_na(adjective, "")
  location <- replace_na(location, "")

  gift = case_when(
    num > 1 ~ pluralize_gift(gift),
    TRUE ~ gift
  )
  num_word = case_when(
    num == 1 ~ "a",
    TRUE ~ as.character(english(num))
  )
  glue("{num_word} {adjective} {gift} {verb} {location}")%>%
    str_squish()
}
