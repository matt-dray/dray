#' Make a gif from a folder of PNG image files.
#'
#' Point to a folder of PNG files and engifify them (make them into a gif (I made this word up)). A convenience function for the gifski function.
#' @param png_folder Folder where you've stored your PNG image files (.png or .PNG).
#' @param gif_path File path for your new gif including .gif extension.
#' @param ... Pass further arguments to gifski (see ?gifski for details).
#' @keywords gif, gifski
#' @import gifski
#' @export
#' @examples
#' \dontrun{
#' # filepath of folder containing PNGs
#' gif_in <- "folder/subfolder"
#'
#' # filepath for the output gif (including extension)
#' gif_out <- "gifs/amazing_gif.gif"
#'
#'# engifify
#' make_gif(
#'   png_folder = gif_in,
#'   gif_path = gif_out
#' )
#' }



make_gif <- function(
  png_folder = "img", gif_path = "new_gif.gif", ...
) {

  # list the PNG files in the folder specified
  png_files <- list.files(
    path = png_folder,
    pattern = ".png|.PNG",  # only PNG files
    full.names = TRUE  # provide the full path
  )

  if(length(png_files) < 2) {
    stop("You need more PNGs to make a gif")
  }

  png("frame%03d.png")

  par(ask = FALSE)

  dev.off()

  gifski(
    png_files = png_files,
    gif_file = gif_path
  )

}
