`%||%` <- function(a, b) if (is.null(a)) b else a

dropNulls <- function(l) {
  if (length(l) == 0) {
    return(l)
  }
  l[!vapply(l, is.null, logical(1))]
}
#
# registerMethods <- function(methods) {
#   lapply(methods, function(method) {
#     pkg <- method[[1]]
#     generic <- method[[2]]
#     class <- method[[3]]
#     func <- get(paste(generic, class, sep="."))
#     if (pkg %in% loadedNamespaces()) {
#       registerS3method(generic, class, func, envir = asNamespace(pkg))
#     }
#     setHook(
#       packageEvent(pkg, "onLoad"),
#       function(...) {
#         registerS3method(generic, class, func, envir = asNamespace(pkg))
#       }
#     )
#   })
# }
#
# .onLoad <- function(...) {
#   # htmltools provides methods for knitr::knit_print, but knitr isn't a Depends or
#   # Imports of htmltools, only an Enhances. Therefore, the NAMESPACE file has to
#   # declare it as an export, not an S3method. That means that R will only know to
#   # use our methods if htmltools is actually attached, i.e., you have to use
#   # library(htmltools) in a knitr document or else you'll get escaped HTML in your
#   # document. This code snippet manually registers our methods with S3 once both
#   # htmltools and knitr are loaded.
#   registerMethods(list(
#     # c(package, genname, class)
#     c("knitr", "knit_print", "chart")
#   ))
# }
