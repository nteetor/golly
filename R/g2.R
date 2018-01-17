includeG2 <- function() {
  # shiny::addResourcePath("golly", system.file("www", package = "golly"))

  htmltools::singleton(
    htmltools::tags$head(
      htmltools::tags$script(
        # src = "golly/g2/g2.min.js"
        htmltools::HTML(readLines(
          system.file("www", "g2", "g2.min.js", package = "golly"),
          warn = FALSE
        ))
      )
    )
  )
}
