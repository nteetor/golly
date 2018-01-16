# usage ----
# const data = [
#   { time: '10:10', call: 4, waiting: 2, people: 2 },
#   { time: '10:15', call: 2, waiting: 6, people: 3 },
#   { time: '10:20', call: 13, waiting: 2, people: 5 },
#   { time: '10:25', call: 9, waiting: 9, people: 1 },
#   { time: '10:30', call: 5, waiting: 2, people: 3 },
#   { time: '10:35', call: 8, waiting: 2, people: 1 },
#   { time: '10:40', call: 13, waiting: 1, people: 2 }
#   ];
# const chart = new G2.Chart({
#   container: 'c2',
#   forceFit: true,
#   height: 400
# });
# chart.source(data, {
#   call: {
#     min: 0
#   },
#   people: {
#     min: 0
#   },
#   waiting: {
#     min: 0
#   }
# });
# chart.legend({
#   custom: true,
#   allowAllCanceled: true,
#   items: [
#     { value: 'waiting', marker: {symbol: 'square', fill: '#3182bd', radius: 5} },
#     { value: 'call', marker: {symbol: 'hyphen', stroke: '#99d8c9', radius: 5, lineWidth: 3} },
#     { value: 'people', marker: {symbol: 'hyphen', stroke: '#fdae6b', radius: 5, lineWidth: 3} }
#     ],
#   onClick: ev => {
#     const item = ev.item;
#     const value = item.value;
#     const checked = ev.checked;
#     const geoms = chart.getAllGeoms();
#     for (let i = 0; i < geoms.length; i++) {
#       const geom = geoms[i];
#       if (geom.getYScale().field === value) {
#         if (checked) {
#           geom.show();
#         } else {
#           geom.hide();
#         }
#       }
#     }
#   }
# });
# chart.axis('waiting', false);
# chart.axis('call', false);
# chart.axis('people', false);
# chart.interval()
# .position('time*waiting')
# .color('#3182bd');
# chart.line()
# .position('time*call')
# .color('#99d8c9')
# .size(3)
# .shape('smooth');
# chart.line()
# .position('time*people')
# .color('#fdae6b')
# .size(3)
# .shape('smooth');
# chart.point()
# .position('time*people')
# .color('#fdae6b')
# .size(3)
# .shape('circle');
# chart.render();

# help ----

#' Chart legend
#'
#' Customize a g2 chart legend.
#'
#' @param field A string or true.
#'
#' @param position One of "top", "right", "bottom", or "left", defaults to "bottom".
#'
#'   设置图例的显示位置，可设置的值为：top、right、bottom、left，分别表示上、右、下、左。默认为 bottom
#'
#' @param layout One of "vertical" or "horizontal", defaults to "horizontal"(??).
#'
#'   对分类类型的图例生效，用于设置各个图例项的排列方式，可设置值包括：vertical、horizontal，分别表示垂直和水平排布。
#'
#' @param title A title config list, see chart-title.R.
#'
#'   图例标题的显示样式设置，如果值为 null，表示不展示图例标题，默认不展示。
#'
#' @param offsetX Offset the legend position along the x-axis, in px units,
#'   defaults to 0.
#'
#'   图例 x 方向的偏移值，数值类型，数值单位为 'px'，默认值为 0。
#'
#' @param offsetY Offset the legend position along the y-axis, in px units,
#'   defaults to 0.
#'
#'   图例 Y 方向的偏移值，数值类型，数值单位为 'px'，默认值为 0。
#'
#' @param itemGap Space between the legend items(??).
#'
#'   对分类类型的图例生效，表示图例每项之间的间距，如果是水平排布则为左右间距，如果是竖直排布则为上下间距。
#'
#' @param itemMarginGap Margin of each legend item(??).
#'
#'   对分类类型的图例生效，表示各个图例项垂直方向的间距。
#'
#' @param itemWidth Fixed(??) width of each legend item(??).
#'
#'   对分类类型的图例生效，设置图例项的宽度，当图例有很多图例项，并且用户想要这些图例项能垂直对齐时，此时这个属性可帮用户实现此效果。
#'
#' @param unCheckColor A character string specifying the color hex code of
#'   legend items when they are deselected, "cancelled". (defaults to some light
#'   shade of grey)
#'
#'   对分类类型的图例生效，用于取消选中的图例文本颜色。
#'
#' @param background A list of two values, the background color of the legend
#'   as a hexcode string and an opacity 0 through 1.
#'
#'   对分类类型的图例生效，用于设置图例的背景样式。
#'
#' @param allowAllCancelled TRUE or FALSE specifying whether all fields in the
#'   legend can be deselected, "cancelled", defaults to FALSE.
#'
#'   对分类类型的图例生效，表示是否允许所有图例项被取消选中，默认为 false，即必须保留一个被选中的图例项。
#'
#' @param itemFormatter A function with one argument which is applied to the
#'   legend fields, returns the new value to use for the field.
#'
#'   回调函数，用于格式化图例每项的文本显示。
#'
#' @param marker A character string specifying the symbol to use for all legend
#'   fields (see `items` for how to specifying a marker per field). geoms will
#'   specify the default value.
#'
#'   Possible values: "circle", "square", "bowtie", "diamond", "hexagon",
#'   "triangle", "triangle-down", "cross", "tick", "plus", "hyphen", "line",
#'   "hollowCircle", "hollowSquare", "hollowBowtie", "hollowDiamond",
#'   "hollowHexagon", "hollowTriangle", "hollowTriangle-down"
#'
#'   对分类类型的图例生效，用于设置图例的 marker 样式，默认按照 geom 的类型显示。
#'
#'   NOTE: seems one can also specify a function that draws a marker onto a mini
#'   canvas, e.g. to draw a line and dot combined.
#'
#' @param clickable Allow deselecting through clicks(??), defaults to TRUE.
#'
#'   对分类类型的图例生效，设置图例项是否允许点击，默认为 true，即允许点击。
#'
#' @param hoverable Allow hover(??), defaults to TRUE.
#'
#'   对分类类型的图例生效，设置是否开启鼠标 hover 至图例的交互效果，默认为 true，即开启动画。
#'
#' @param selectedMode `clickable` must be TRUE, one of "single" or "multiple".
#'
#'   针对分类类型图例，当 clickable 为 true 时该配置项生效，用于设置图例的选中交互模式，可配置的属性:
#'
#' @param onHover A function which accepts an event object, `hoverable` must be
#'   TRUE.
#'
#'   针对分类类型的图例，用于自定义鼠标 hover 图例项的交互，当 hoverable 为 false 不生效。
#'
#' @param onClick A function which accepts an event object, `clickable` must be
#'   TRUE.
#'
#'   针对分类类型的图例，用于自定义鼠标点击图例项的交互，当 clickable 为 false 不生效。
#'
#' @param useHtml If TRUE then custom HTML templates may be specified for the
#'   legend container and legend item.
#'
#'   针对分类类型图例，用于开启是否使用 html 渲染图例，默认为 false，true 表示使用 html 渲染图例。
#'
#' @param container --
#'
#'   当 useHtml 为 true 时生效，用于指定生成图例的 dom 容器，那么该值必须为 dom 容器的 id 值为分类类型的话，则支持传入索引值。
#'
#' @param containerTpl A container HTML template (so what is `container`?),
#'   defaults to,
#'   ```
#'   <div class="g2-legend" style="position:absolute;top:20px;right:60px;width:auto;">
#'     <h4 class="g2-legend-title"></h4>
#'     <ul class="g2-legend-list" style="list-style-type:none;margin:0;padding:0;"></ul>
#'   </div>
#'   ```
#'   (??)
#'
#'   当 useHtml 为 true 时生效，用于指定图例容器的模板，默认值如下：
#'
#' @param itemTpl An item HTML template, defaults to,
#'   ```
#'   <li class="g2-legend-list-item item-{index} {checked}" data-color="{originColor}" data-value="{originValue}" style="cursor: pointer;font-size: 14px;">
#'     <i class="g2-legend-marker" style="width:10px;height:10px;border-radius:50%;display:inline-block;margin-right:10px;background-color: {color};"></i>
#'     <span class="g2-legend-text">{value}</span>
#'   </li>
#'   ```
#'   (??)
#'
#'   当 useHtml 为 true 时生效，用于指定生成图例的图例项 html 模板，默认值如下：
#'
#' @param slideable TRUE or FALSE, defaults to TRUE.
#'
#'   针对连续图例，用于设置连续图例是否允许滑动，默认为 true，即开启滑动操作。
#'
#' @param width A number.
#'
#'   针对连续图例，用于设置图例的宽度。
#'
#' @param height A number.
#'
#'   针对连续图例，用于设置图例的高度。
#'
#' @param custom TRUE or FALSE
#'
#'   默认为 false，当 custom 为 true，表示不使用默认生成的图例，允许用户自定义图例，包括具体的图例项以及 click、hover 交互。
#'
#'   自定义图例时需要用户自己声明具体的图例项 items(该属性是一个对象数组，数组中每一项为一个对象类型，结构为： { value: '', marker:{fill: 'red'}})以及图例项的 hover 和 click
#'
#' @examples
#'
legend <- function() {
  stop("not implemented")
}
