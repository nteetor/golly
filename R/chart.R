
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

chart <- function(data, width, height, pixelRatio = NULL, animate = TRUE) {
  structure(
    list(
      data = data,
      container = NULL,
      width = width,
      height = height,
      pixelRatio = pixelRatio,
      animate = animate,
      background = list(),
      plotBackground = list(),
      forceFit = FALSE,  # i.e. width is required, there is also a chart method animate()
      animate = TRUE     # there is also a chart method animate()
    ),
    class = "chart"
  )
}
