# plotBackground: {
#   fill: {string},
#   fillOpacity: {number},
#   stroke: {string},
#   strokeOpacity: {number},
#   opacity: {number},
#   lineWidth: {number},
#   radius: {number}
# }

plotBackground <- function(chart, ...) {
  chart$plotBackground <- list(...)
  invisible(chart)
}
