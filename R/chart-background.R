# g2 chart background is equivlent to ggplot2 theme panel options

# background: {
#   fill: {string},
#   fillOpacity: {number},
#   stroke: {string},
#   strokeOpacity: {number},
#   opacity: {number},
#   lineWidth: {number},
#   radius: {number}
# }

background <- function(chart, ...) {
  chart$background <- list(...)
  invisible(chart)
}
