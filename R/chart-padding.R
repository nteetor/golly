# chart padding may be specified as follows
# padding: [ 20, 30, 20, 30]
# padding: 20
# padding: { top: 20, right: 30, bottom: 20, left: 30 }
# padding: 'auto'
# padding: [20, 'auto', 30, 'auto']

padding <- function(chart, top, right = top, bottom = top, left = top) {
  chart$padding <- list(top = top, right = right, bottom = bottom, left = left)
  invisible(chart)
}
