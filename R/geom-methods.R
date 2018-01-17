#' Geom position
#'
#' Describe how fields interact.
#'
#' @param geom A geom object, e.g. a call to [line], [point], etc.
#'
#' @param value A character string specifying an interaction of fields or
#'   a character vector specifying an interaction of fields.
#'
#' @details
#'
#' The "fieldA*fieldB" notation seems equivalent to "['fieldA', 'fieldB']"
#' notation.
#'
#' @seealso
#'
#' [https://antv.alipay.com/zh-cn/g2/3.x/api/geom.html#_position]
#'
#' @family geom methods
#' @export
position <- function(geom, value) {
  if (length(value) == 2) {
    value <- paste0(value, collapse = "*")
  }
  geom$position <- geom$position %||% list()
  geom$position$field <- value
  invisible(geom)
}

#' Geom color
#'
#' Describe a colors for fields.
#'
#' @inheritParams position
#'
#' @param field A character string specifying a data field.
#'
#' @param value A character string (color name or hexcode), a gradiant specified
#'   as `"color1-color2"`, an unnamed vector of colors to use, or a named vector
#'   or list mapping values to colors.
#'   (G2 also supports functions, if an R function could be converted to a JS
#'   one).
#'
#' @family geom methods
#' @export
color <- function(geom, field, value = NULL) {
  geom$color <- geom$color %||% list()
  geom$color$field <- field
  geom$color$value <- value
  invisible(geom)
}

#' Geom shape
#'
#' Describe a shape for an entire geom or for certain fields.
#'
#' @inheritParams color
#'
#' @param value A character string, unnamed character vector, or named character
#'   vector or list. (as with [color], a function can be supplied in native G2,
#'   however as of now there is no good way to translate R functions to
#'   JavaScript functions).
#'
#'   The following shapes are available for each geom,
#'
#'   **point**: "hollowCircle", "hollowSquare", "hollowDiamond", "hollowBowtie",
#'   "hollowTriangle", "hollowHexagon", "cross", "tick", "plus", "hyphen", and
#'   "line"
#'
#'   **line**: "line", "smooth", "dash", "dot", and "spline"
#'
#'   **area**: "area", "line", and "smoothLine"
#'
#'   **interval**: "rect", "hollowRect", "line", and "tick"
#'
#'   **polygon**: "polygon" and "hollow"
#'
#'   **schema**: "box" and "candle"
#'
#' @family geom methods
#' @export
shape <- function(geom, field, value = NULL) {
  geom$shape <- geom$shape %||% list()
  geom$shape$field <- field
  geom$shape$value <- value
  invisible(geom)
}

#' Geom size
#'
#' Describe a size for a geom.
#'
#' @inheritParams color
#'
#' @param value A number specifying a size or a vector of two numbers specifying
#'   a min and max value to map field values between.
#'
#' @family geom methods
#' @export
size <- function(geom, field, value = NULL) {
  geom$size <- geom$size %||% list()
  geom$size$field <- field
  geom$size$value <- value
  invisible(geom)
}

#' Geom opacity
#'
#' Describe an opacity for a geom.
#'
#' @inheritParams color
#'
#' @param value A number between 0 and 1 specifying the opacity to apply to
#'   the entire geom or field.
#'
#' @family geom methods
#' @export
opacity <- function(geom, field, value = NULL) {
  geom$opacity <- geom$opacity %||% list()
  geom$opacity$field <- field
  geom$opacity$value <- value
  invisible(geom)
}

#' Geom adjustments
#'
#' Describe an adjust for a geom.
#'
#' @inheritParams color
#'
#' @param value One or more of "stack", "dodge", "jitter", or "symmetric"
#'   specifying a position adjustment for a field or entire geom.
#'
#' @family geom methods
#' @export
adjust <- function(geom, field, value) {
  geom$adjust <- geom$adjust %||% list()
  geom$adjust$field <- field
  geom$adjust$value <- value
  invisible(geom)
}

#
# additional methods on hold for now:
#   - label
#   - tooltip
#   - style
#   - select
#   - active
#   - animate
#
