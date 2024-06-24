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

# Fungsi untuk menghitung keliling lingkaran
#' Calculate the circumference of a circle
#'
#' @param radius The radius of the circle
#' @return The circumference of the circle
#' @examples
#' circle_circumference(5)
circle_circumference <- function(radius) {
  if (radius <= 0) {
    stop("Radius must be a positive number")
  }
  return (2 * pi * radius)
}


# Fungsi untuk menghitung keliling persegi panjang
#' Calculate the perimeter of a rectangle
#'
#' @param length The length of the rectangle
#' @param width The width of the rectangle
#' @return The perimeter of the rectangle
#' @examples
#' rectangle_perimeter(5, 3)
rectangle_perimeter <- function(length, width) {
  if (length <= 0 || width <= 0) {
    stop("Length and width must be positive numbers")
  }
  return (2 * (length + width))
}


# Fungsi untuk menghitung keliling segitiga
#' Calculate the perimeter of a triangle
#'
#' @param side1 The length of the first side of the triangle
#' @param side2 The length of the second side of the triangle
#' @param side3 The length of the third side of the triangle
#' @return The perimeter of the triangle
#' @examples
#' triangle_perimeter(3, 4, 5)
triangle_perimeter <- function(side1, side2, side3) {
  if (side1 <= 0 || side2 <= 0 || side3 <= 0) {
    stop("All sides must be positive numbers")
  }
  return (side1 + side2 + side3)
}
