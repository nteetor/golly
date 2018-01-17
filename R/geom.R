geom <- function(type, f) {
  if (!is.function(f)) {
    stop(
      "invalid `geom` argument, expecting `f` to be a sequence of methods",
      call. = FALSE
    )
  }

  this <- structure(
    list(
      type = type
    ),
    class = "geom"
  )

  this <- f(this)

  this
}

#' Interval geom
#'
#' Interval geoms are bar charts.
#'
#' @param chart A chart object.
#'
#' @param f A functional sequence of geom methods to apply to the interval
#'   geom.
#'
#' @export
interval <- function(chart, f) {
  this <- geom("interval", f)

  chart$geoms <- chart$geoms %||% list()

  # TODO: this is a costly operation, needs to be changed
  chart$geoms <- c(chart$geoms, list(this))

  chart
}
