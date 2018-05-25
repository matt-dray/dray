#' Cloud Pie: A Totally Unnecessary Frankenstein's Monster.
#'
#' An unholy matrimony of a 3D-Exploded-Pie-Chart and a word cloud. You're welcome.
#' @param data Summary dataframe with two columns: categories, and counts for those categories.
#' @param name_col Column containing the category name.
#' @param name_col Column containing the counts for each category.
#' @keywords
#' @export
#' @examples
#' cat_function()

cloud_pie <- function(data, name_col, count_col, ...){

  pie3D(
    x = data[[count_col]],
    explode = 0.5,
    shade = 0.5,
    theta = 1,
    col = rainbow(nrow(data)),
    radius = 0.5,
    border = "white"
  )

  par(new = TRUE)

  wordcloud(
    words = data[[name_col]],
    freq = data[[count_col]],
    colors = rainbow(13),
    ordered.colors = TRUE,
    vfont = c("gothic english", "plain")
  )

}
#
# data <- read.csv("https://raw.githubusercontent.com/matt-dray/draytasets/master/ssb_pokeballs.csv")
# library(dplyr)
# pkmn <- data %>%
#   group_by(pokemon) %>%
#   count() %>%
#   ungroup()
#
# cloud_pie(data = pkmn, name_col = "pokemon", count_col = "n")
