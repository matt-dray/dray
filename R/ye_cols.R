#' A Vector Of Colours From The Ye Album Cover.
#'
#' Simplified colours sampled from the cover of Kanye West's 2018 album 'ye'.
#' @keywords colour, color, pallette, kanye, ye
#' @import
#' @export
#' @return A list of named hexadecimal colours.
#' @examples
#' library(dray)
#' library(ggplot2)
#'
#'    ggplot(mtcars) +
#'    aes(x = mpg, y = wt) +
#'    geom_point(
#'    colour = ye_cols["text_green"]
#'    )

ye_cols <- c(
  mountain_blue = "#233956", # Catalina Blue (Blue)
  grass_blue = "#0e1e27",  # Black Pearl (Blue)
  cloud_blue1 = "#7a8aa2",  # Ship Cove (Blue)
  cloud_white = "#dfd7c9",  # Albescent White (White)
  cloud_grey = "#b5b2b0",  # Bombay (Grey)
  cloud_blue2 = "#9da3ae",  # Spun Pearl (Blue)
  text_green = "#31ef56"  # Malachite (Green)
)


