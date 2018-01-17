#' Chart axes
#'
#' Add an axis to a chart. G2 does not display axis titles by default.
#'
#' @param chart A chart object.
#'
#' @param field A data field.
#'
#' @param position One of "top", "bottom", "right", or "left".
#'
#' @param line NULL or a line config list.
#'
#' @param label NULL or a label config list.
#'
#' @param title NULL, TRUE, or a title config list.
#'
#' @param tickLine NULL or a tick line config list.
#'
#' @param subTickCount A number specifying the number of subticks on the axis.
#'
#' @param subTickLine A sub tick config list describing the style of the sub
#'   ticks.
#'
#' @param grid NULL or a grid config list.
#'
#' @family chart methods
#' @export
axis <- function(chart, field = NULL,
                 position = c("top", "bottom", "left", "right"),
                 line = NULL, label = NULL, title = NULL, tickLine = NULL,
                 subTickCount = 0, subTickLine = NULL, grid = NULL) {
  chart$axis <- chart$axis %||% list()
  chart$axis$field <- field
  chart$axis$position <- match.arg(position)
  chart$axis$line <- line
  chart$axis$label <- label
  chart$axis$title <- title
  chart$axis$tickLine <- tickLine
  chart$axis$subTickCount <- subTickCount
  chart$axis$grid <- grid
  invisible(chart)
}
