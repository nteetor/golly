# usage ----
# const data = [
#   { x: 0, y: 1 },
#   { x: 1, y: 2 },
#   { x: 2, y: 3 }
#   ];
#
# // 为 x 字段设置列定义
# chart.scale('x', {
#   type: 'cat',  // identity, linear, cat, time, timeCat, log, pow
#   values: [ 'A', 'B', 'C' ]
#   alias: '类型'
# });

# scale config ----
# {
#   type: {string},
#   alias: {string},
#   formatter: {function},
#   range: {array},
#   tickCount: {number},
#   ticks: {array},
#   sync: {boolean}
# }

# NOTES:
#   - might make more sense to break scale config out into inidividual arguments

scale <- function(chart, field, scaleConfig = list()) {
  this <- structure(
    list(
      field = field,
      scaleConfig = list()
    ),
    class = "scale"
  )

  chart$scale <- this
  invisible(chart)
}
