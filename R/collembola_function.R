#' A Collembola Function
#'
#' This function allows you to express your love of collembola.
#' @param love Do you love collembola? Defaults to TRUE.
#' @keywords collembola
#' @export
#' @examples
#' collembola_function()

collembola_function <- function(love = TRUE){
  if(love == TRUE) {
    print("I love collembola!")
  }
  else {
    print("I am not a cool person.")
  }
}

# thanks hilary
# https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/
