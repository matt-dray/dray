#' @title A vector of simplified colours from the ye album cover
#'
#' @description TBC.
#'
#' @return A list of named hexadecimal colours.
#'
#' @examples
#'
#' library(ggplot2)
#' library(dray)
#' library(dplyr)
#'
#' mtcars %>%
#'    ggplot +
#'    aes(
#'    x = mpg,
#'    y = wt
#'    ) +
#'    geom_point(
#'    colour = gov_cols["text_green"]
#'    ) +
#'    theme_gov()
#'
#' @export
#'

ye_cols <- c(
  mountain_blue = "#233956", # Catalina Blue (Blue)
  grass_blue = "#0e1e27",  # Black Pearl (Blue)
  cloud_blue1 = "#7a8aa2",  # Ship Cove (Blue)
  cloud_white = "#dfd7c9",  # Albescent White (White)
  cloud_grey = "#b5b2b0",  # Bombay (Grey)
  cloud_blue = "#9da3ae",  # Spun Pearl (Blue)
  text_green = "#31ef56"  # Malachite (Green)
)


