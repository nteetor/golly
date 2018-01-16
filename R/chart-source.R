# usage ----
# const data = [
#   { type: 0, value: 1 },
#   { type: 1, value: 2 },
#   { type: 2, value: 3 },
#   { type: 2, value: 3, color: '#f80' },
#   ];
#
# chart.source(data, {
#   type: {
#     type: 'cat', // 声明 type 字段为分类类型
#     values: [ 'A', 'B', 'C' ] // 重新显示的值
#     alias: '类型' // 设置属性的别名
#   }
# });

# scaleConfig ----
# {
#   type: {string}, // identity, linear, cat, time, timeCat, log, pow
#   alias: {string},
#   formatter: {function},
#   range: {array}, //  [0, 1]，[min, max]
#   tickCount: {number},
#   ticks: {array},
#   sync: {boolean}
# }

# (!!) highly likely this will be removed or renamed
source <- function(chart, data, scaleConfig = NULL) {
  chart$data <- data
  invisible(chart)
}
