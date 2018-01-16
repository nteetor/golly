# usage ----
# chart.coord('polar', {
#   radius: 0.5, // 设置半径，值范围为 0 至 1
#   innerRadius: 0.3, // 空心圆的半径，值范围为 0 至 1
#   startAngle: -1 * Math.PI / 2, // 极坐标的起始角度，单位为弧度
#   endAngle: 3 * Math.PI / 2 // 极坐标的结束角度，单位为弧度
# });

# functions as arguments ----
# rotate(angle): 坐标系旋转，angle 表示旋转的度数，单位为角度。
# scale(sx, sy): 坐标系缩放，sx 代表 x 方向缩放比例，sy 代表 y 方向缩放比例，单位为数值。
# reflect('' | 'x' | 'y'): 坐标系转置，将 x 或者 y 的起始、结束值倒置。
# transpose(): 将坐标系 x 轴和 y 轴转置。

# chart.coord().rotate(70).scale(1.5, 1.5).reflect('xy').transpose();

# NOTES:
#   - break out coordConfig into individual arguments

coord <- function(chart, type = c("rect", "polar", "theta", "helix"),
                  coordConfig, rotate, scale, reflex, transpose) {
  this <- structure(
    list(

    ),
    class = "coord"
  )
}
