
# new G2.Chart({
#   container: {string} | {HTMLDivElement},
#   width: {number},
#   height: {number},
#   padding?: {object} | {number} | {array},
#   background?: {object},
#   plotBackground?: {object},
#   forceFit?: {boolean},
#   animate?: {boolean},
#   pixelRatio?: {number},
#   data?: {array} | {DataSet.View}
# });

# NOTES:
#   - bundle "forceFit" into "width", forceFit is false by default
#   -

#' Create a G2 chart
#'
#' A chart.
#'
#' @param data A data frame.
#'
#' @param width The width of the chart in pixels.
#'
#' @param height The height of the chart in pixels
#'
#' @export
#' @examples
#' games %>%
#'   chart() %>%
#'   interval(
#'     . %>%
#'       position("genre*sold") %>%
#'       color("genre")
#'   )
#'
chart <- function(data, width = 600, height = 300) {
  structure(
    list(
      data = data,
      container = NULL,
      width = width,
      height = height,
      pixelRatio = NULL,
      background = list(),
      plotBackground = list(),
      forceFit = FALSE,  # i.e. width is required, there is also a chart method animate()
      # animate = TRUE     # there is also a chart method animate()
      geoms = list()
    ),
    class = "chart"
  )
}
