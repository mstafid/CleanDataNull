# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# R/clean_nulls.R

#' Clean Null Values from Data Frame
#'
#' This function removes rows or columns with null values from a data frame.
#' @param data A data frame.
#' @param remove What to remove: "rows" or "columns". Default is "rows".
#' @return A data frame with null values removed.
#' @examples
#' df <- data.frame(a = c(1, 2, NA), b = c(NA, 3, 4))
#' clean_nulls(df, remove = "rows")
#' clean_nulls(df, remove = "columns")
clean_nulls <- function(data, remove = c("rows", "columns")) {
  remove <- match.arg(remove)
  if (!is.data.frame(data)) {
    stop("Input must be a data frame")
  }
  if (remove == "rows") {
    return(data[complete.cases(data), ])
  } else if (remove == "columns") {
    return(data[, colSums(is.na(data)) == 0])
  }
}
