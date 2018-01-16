#' Geom position
#'
#' Describe how fields interact.
#'
#' @param geom A geom object, e.g. a call to [line], [point], etc.
#'
#' @param x The field on the x-axis.
#'
#' @param y The field on the y-axis.
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
position <- function(geom, x, y) {

}

#' Geom color
#'
#' Describe a colors for fields.
#'
#' @param geom A geom object, e.g. a call to [line], [point], etc.
#'
#' @param value A character string (color name or hexcode), a gradiant specified
#'   as `"color1-color2"`, an unnamed vector of colors to use, or a named vector
#'   or list mapping values to colors.
#'   (G2 also supports functions, if an R function could be converted to a JS
#'   one).
#'
color <- function(geom, value) {

}
