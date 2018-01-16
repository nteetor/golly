
# axis config ----
#
# position: string // top, bottom, left, right
# line: ----
# {
#   stroke: {string},
#   strokeOpacity: {number},
#   lineDash: {array},
#   lineWidth: {number}
# }
# label: ----
# {
#   offset: {number},
#   textStyle: {
#     textAlign: 'center', // center, start, middle, end
#     fill: '#404040',
#     fontSize: '12',
#     fontWeight: 'bold',
#     rotate: 30,
#     textBaseline: 'top' // top, middle, bottom，(defaults to "middle")
#     (??) text:
#   },
#   autoRotate: {boolean},  // defaults to true

#   * @param  {string} text
#   * @param  {object} item
#   * @param  {number} index
#   * @return {string}
#   formatter(text, item, index) {},

#   * @param  {string} text
#   * @param  {object} item
#   * @param  {number} index
#   * @return {string} (an html string)
#   htmlTemplate(text, item, index) {}
# }
# (!!) G2 does not add label axes by default
# title: ----
# {
#   autoRotate: {boolean},
#   offset: {number},
#   textStyle: {
#     textAlign: 'center', // center, start, middle, end
#     fill: '#404040',
#     fontSize: '12',
#     fontWeight: 'bold',
#     rotate: 30, // autoRotate, false
#     textBaseline: 'top' // top, middle, bottom  (defaults to middle)
#   },
#   position: 'start' | 'center' | 'end' // start center end
# }
# tickLine: ----
# {
#   lineWidth: 1,
#   stroke: '#ccc',
#   strokeOpacity: 0.5,
#   length: 5,
# }
# subTickCount: ----
#   number (defaults to 0)
# subTickLine: ----
# (!!) when subTickCount is not 0
# {
#   lineWidth: 1,
#   stroke: '#ddd',
#   strokeOpacity: 0.5,
#   length: 3
# }
# grid: ----
# {
#   align: 'center',
#   type: 'line' | 'polygon',  // line, polygon (if line(?) apple lineStyle)
#   lineStyle: {
#     stroke: '#d9d9d9',
#     lineWidth: 1,
#     lineDash: [4, 4 ]
#   },
#   alternateColor: '#ccc' | [ '#f80', '#ccc' ],
#   hideFirstLine: true | false, // defaults to false
#   hideLastLine: true | false // defaults to false
# }

axis <- function(chart, line, label, title, tickLine, subTickCount,
                 subTickLine, grid) {

}
