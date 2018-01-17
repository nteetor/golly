g2Dependency <- function() {
  htmlDependency(
    name = "g2",
    version = "3.0.3",
    src = system.file("www", "g2", package = "golly"),
    script = "g2.min.js"
  )
}
