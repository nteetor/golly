`%||%` <- function(a, b) if (is.null(a)) b else a

dropNulls <- function(l) {
  if (length(l) == 0) {
    return(l)
  }
  l[!vapply(l, is.null, logical(1))]
}
