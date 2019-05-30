#' Create A Brick Soccer Player
#'
#' Create a tibble that defines a \{brickr\} soccer player. Pass to
#' \code{\link[brickr:bricks_from_table]{brickr::bricks_from_table()}} and then
#' \code{\link[brickr:display_bricks]{brickr::display_bricks()}} to render it.
#' @param hair_col Numeric code as per \code{brickr::lego_colors}
#' @param skin_col Numeric code as per \code{brickr::lego_colors}
#' @param boot_col Numeric code as per \code{brickr::lego_colors}
#' @param shirt_body_col Numeric code as per \code{brickr::lego_colors}
#' @param shirt_sleeve_col Numeric code as per \code{brickr::lego_colors}
#' @param shorts_col Numeric code as per \code{brickr::lego_colors}
#' @param sock_col Numeric code as per \code{brickr::lego_colors}
#' @param sock_trim_col Numeric code as per \code{brickr::lego_colors}
#' @keywords soccer
#' @importFrom tibble tribble
#' @export
#' @examples
#' man_city <- create_brickr_player(
#'   hair_col = 2,
#'   skin_col = 39,
#'   boot_col = 7,
#'   shirt_body_col = 13,
#'   shirt_sleeve_col = 13,
#'   shorts_col = 1,
#'   sock_col = 27,
#'   sock_trim_col = 27
#' )
#'
#' \dontrun{
#' library(dplyr)
#' library(brickr)
#' create_brickr_player() %>%
#'   bricks_from_table(lego_colors) %>%
#'   display_bricks()
#' }

create_brickr_player <- function(

  hair_col = 39,
  skin_col = 8,
  boot_col = 2,

  shirt_body_col = 7,
  shirt_sleeve_col = 1,
  shorts_col = 1,
  sock_col = 7,
  sock_trim_col = 1

){

  bricks_df <- tribble(

    ~"Level", ~`1`, ~`2`, ~`3`, ~`4`, ~`5`,

    "A", 0, 0, 0, 0, 0,
    "A", 0, boot_col, 0, boot_col, 0,
    "A", 0, boot_col, 0, boot_col,0,

    "B", 0, 0, 0, 0, 0,
    "B", 0, sock_col, 0, sock_col, 0,
    "B", 0, 0, 0, 0, 0,

    "C", 0, 0, 0, 0, 0,
    "C", 0, sock_trim_col, 0, sock_trim_col, 0,
    "C", 0, 0, 0, 0, 0,

    "D", 0, 0, 0, 0, 0,
    "D", 0, skin_col, 0, skin_col, 0,
    "D", 0, 0, 0, 0, 0,

    "E", 0, shorts_col, 0, shorts_col, 0,
    "E", 0, shorts_col, 0, shorts_col, 0,
    "E", 0, shorts_col, 0, shorts_col, 0,

    "F", 0, shorts_col, shorts_col, shorts_col, 0,
    "F", 0, shorts_col, shorts_col, shorts_col, 0,
    "F", 0, shorts_col, shorts_col, shorts_col, 0,

    "G", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,
    "G", skin_col, shirt_body_col, shirt_body_col, shirt_body_col, skin_col,
    "G", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,

    "H", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,
    "H", skin_col, shirt_body_col, shirt_body_col, shirt_body_col, skin_col,
    "H", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,

    "I", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,
    "I", skin_col, shirt_body_col, shirt_body_col, shirt_body_col, skin_col,
    "I", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,

    "J", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,
    "J", shirt_sleeve_col, shirt_body_col, shirt_body_col, shirt_body_col, shirt_sleeve_col,
    "J", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,

    "K", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,
    "K", shirt_sleeve_col, shirt_sleeve_col, shirt_body_col, shirt_sleeve_col, shirt_sleeve_col,
    "K", 0, shirt_body_col, shirt_body_col, shirt_body_col, 0,

    "L", 0, 0, 0, 0, 0,
    "L", 0, 0, skin_col, 0, 0,
    "L", 0, 0, 0, 0, 0,

    "M", 0, skin_col, skin_col, skin_col, 0,
    "M", 0, skin_col, skin_col, skin_col, 0,
    "M", 0, skin_col, skin_col, skin_col, 0,

    "N", 0, hair_col, hair_col, hair_col, 0,
    "N", 0, hair_col, skin_col, hair_col, 0,
    "N", 0, skin_col, skin_col, skin_col, 0,

    "O", 0, hair_col, hair_col, hair_col, 0,
    "O", 0, hair_col, hair_col, hair_col, 0,
    "O", 0, hair_col, hair_col, hair_col, 0
  )

  return(bricks_df)

}
