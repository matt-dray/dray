#' Make a gif from a folder of PNG image files.
#'
#' Point to a folder of PNG files and stitch them into a gif. Convenience function for the gifski function.
#' @param png_folder Folder where you've stored your PNG image files.
#' @param gif_path File path for your new gif, must end in '.gif' extension.
#' @param ... Pass further arguments to gifski (see ?gifski for details).
#' @keywords gif, gifski
#' @import gifski
#' @export
#' @examples
#' # TODO


make_gif <- function(
  png_folder = "img", gif_path = "new_gif.gif", ...
) {

  png("frame%03d.png")

  par(ask = FALSE)

  dev.off()

  png_files <- list.files(
    path = png_folder,
    full.names = TRUE
  )

  gifski(
    png_files = png_files,
    gif_file = gif_path
  )

}
