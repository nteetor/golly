print.chart <- function(x, ...) {
  htmltools::html_print(format(x))
  invisible(x)
}

format_data <- function(chart) {
  paste0("const data = ", toJSON(chart$data, auto_unbox = TRUE), ";")
}

format_chart <- function(chart) {
  paste0(
    "const chart = new G2.Chart(",
    jsonlite::toJSON(
      list(
        container = chart$container,
        width = chart$width,
        height = chart$height
      ),
      auto_unbox = TRUE
    ),
    ");"
  )
}

format_source <- function(chart) {
  paste0(
    "chart.source(data);"
  )
}

format_geoms <- function(chart) {
  paste0(
    "chart.",
    vapply(
      chart$geoms,
      format_geom,
      character(1)
    ),
    ";",
    collapse = ""
  )
}

.GEOM_METHODS <- c("position", "color", "shape", "size", "opacity", "adjust")

format_geom <- function(geom) {
  method_calls <- dropNulls(
    lapply(
      .GEOM_METHODS,
      function(m) {
        if (!is.null(geom[[m]])) {
          this <- geom[[m]]
          paste0(
            m, "(",
            toJSON(this$field, auto_unbox = TRUE),
            if (!is.null(this$value)) {
              paste0(",", toJSON(this$value, auto_unbox = TRUE))
            },
            ")"
          )
        }
      }
    )
  )

  paste0(
    geom$type, "()",
    if (length(method_calls) > 0) {
      paste0(
        ".",
        paste0(method_calls, collapse = ".")
      )
    },
    ";"
  )
}

format.chart <- function(x) {
  if (is.null(x$container)) {
    x$container <- "c1"
  }

  htmltools::tagList(
    htmltools::tags$div(id = x$container),
    htmltools::tags$script(
      htmltools::HTML(
        paste0(
          format_data(x),
          format_chart(x),
          format_source(x),
          format_geoms(x),
          "chart.render();"
        )
      )
    ),
    includeG2()
  )
}
