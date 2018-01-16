# https://antv.alipay.com/zh-cn/g2/3.x/api/chart.html#_guide

# example ----
# see https://antv.alipay.com/zh-cn/g2/3.x/demo/other/bubble-text.html
# see https://antv.alipay.com/zh-cn/g2/3.x/tutorial/guide.html

# usage ----
# chart.guide().line({
#   start: {object} | {function} | {array}, // 辅助线起始位置，值为原始数据值，支持 callback
#   end: {object} | {function}|| {array},// 辅助线结束位置，值为原始数据值，支持 callback
#   lineStyle: {
#     stroke: '#999', // 线的颜色
#     lineDash: [ 0, 2, 2 ], // 虚线的设置
#     lineWidth: 3 // 线的宽度
#   }, // 图形样式配置
#   text: {
#     position: 'start' | 'center' | 'end' | '39%' | 0.5, // 文本的显示位置
#     autoRotate: {boolean}, // 是否沿线的角度排布，默认为 true
#     style: {
#       // 文本图形样式配置
#     },
#     content: {string}, // 文本的内容
#     offsetX: {number}, // x 方向的偏移量
#     offsetY: {number} // y 方向的偏移量
#   } // 文本配置
# });

# this seems like extra for now

# (!!) G2 guides are similar to annotations in ggplot2
