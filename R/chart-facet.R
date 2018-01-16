# usage ----
# const data = [
#   { gender: '男', count: 40, class: '一班', grade: '一年级' },
#   { gender: '女', count: 30, class: '一班', grade: '一年级' },
#   { gender: '男', count: 35, class: '二班', grade: '一年级' },
#   { gender: '女', count: 45, class: '二班', grade: '一年级' },
#   { gender: '男', count: 20, class: '三班', grade: '一年级' },
#   { gender: '女', count: 35, class: '三班', grade: '一年级' },
#   { gender: '男', count: 30, class: '一班', grade: '二年级' },
#   { gender: '女', count: 40, class: '一班', grade: '二年级' },
#   { gender: '男', count: 25, class: '二班', grade: '二年级' },
#   { gender: '女', count: 32, class: '二班', grade: '二年级' },
#   { gender: '男', count: 28, class: '三班', grade: '二年级' },
#   { gender: '女', count: 36, class: '三班', grade: '二年级' }
#   ];
# const chart = new G2.Chart({
#   container: 'c4',
#   width: 800,
#   height: 400,
#   animate: false,
#   padding: [ 0, 90, 80, 80 ]
# });
# chart.source(data);
# chart.coord('theta');
# chart.tooltip({
#   showTitle: false
# });
# chart.facet('tree', {
#   fields: [ 'grade','class' ],
#   line: {
#     stroke: '#00a3d7'
#   },
#   lineSmooth: true,
#   eachView(view, facet) {
#     const data = facet.data;
#     const dv = new DataSet.View();
#     dv.source(data).transform({
#       type: 'percent',
#       field: 'count',
#       dimension: 'gender',
#       as: 'percent'
#     });
#     view.source(dv, {
#       percent: {
#         formatter(val) {
#           return (val * 100).toFixed(2) + '%';
#         }
#       }
#     });
#     view.intervalStack().position('percent').color('gender');
#   }
# });
# chart.render();

# help ----
#' Facet a chart
#'
#' Chart facet.
#'
#' @param type One of "rect", "list", "tree", "mirror", or "matrix" specifying
#'   the type or style of faceting.
#'
#'   分面类型，现支持的类型为：rect, list, tree, mirror, matrix。
#'
#' @param fields A character vector specifying the fields to facet on.
#'
#'   设置分面的字段，用于划分数据集。
#'
#' @param showTitle TRUE or FALSE, defaults to TRUE.
#'
#'   是否显示分面的标题，默认为 true，即展示。
#'
#' @param autoSetAxis TRUE or FALSE, defaults to TRUE.
#'
#'   是否自动设置坐标轴的文本，避免重复和遮挡，默认为 true，即自动设置。
#'
#' @param padding A number or numeric vector.
#'
#'   设置每个 view 之间的间距。padding 是view 的内部边距，所以不会影响布局。
#'
#' @param eachView A function of two arguments `view` and `facet`, returns
#'   `NULL`.
#'
#'   回调函数，用于绘制每一个分面对应 view。该回调函数的内容如下：
#'
#' @param colTitle A list specifying styles for column titles,
#'
#'   ```
#'   colTitle: {
#'     offsetY: -15, // 列标题垂直方向的偏移
#'     style: {
#'       fontSize: 14,
#'       textAlign: 'center',
#'       fill: '#444'
#'     } // 标题文本样式
#'   }
#'   ```
#'
#' @param rowTitle A list specifying styles for row titles,
#'
#'   ```
#'   rowTitle: {
#'     offsetX: -15, // 列标题水平方向的偏移
#'     style: {
#'       fontSize: 14,
#'       textAlign: 'center',
#'       fill: '#444'
#'     } // 标题文本样式
#'   }
#'   ```
#'
#'
facet <- function() {

}
