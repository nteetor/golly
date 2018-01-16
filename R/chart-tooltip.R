#' Add a tooltip to a chart
#'
#' Chart tooltip. The tooltip appears around the cursor when hovering on the
#' plot.
#'
#' @param triggerOn One of "mousemove", "click", or "none" specifying the action
#'   that triggers the tooltip, defaults to "mousemove". If "none" then the
#'   tooltip can be trigger with the following chart object methods,
#'   `showTooltip()` and `hideTooltip()`.
#'
#'   tooltip 的触发方式，可配置的值为：'mousemove'、'click'、'none'，默认为 mousemove。
#'
#' @param showTitle TRUE or FALSE, if TRUE then a title is added tooltip.
#'
#'   是否展示提示信息的标题，默认为 true，即展示，通过设置为 false 来隐藏标题。
#'
#' @param title A character string specifying the title of the tooltip.
#'
#'   设置 tooltip 的标题展示的数据字段，设置该字段后，该标题即会展示该字段对应的数值。showTitle 为 false 时，该设置不生效。
#'
#' @param crosshairs A list (config object) specifying properties of the
#'   crosshairs for geoms line, area, path, and areaStack. Also, interval geom?
#'
#'   是一个对象类型，用于设置 tooltip 的辅助线或者辅助框。
#'
#' @param offset A number specifying the buffer between the mouse and the
#'   tooltip.
#'
#'   设置 tooltip 距离鼠标的偏移量。
#'
#' @param inPlot TRUE or FALSE, if TRUE the tooltip is contained within the
#'   boundaries of the chart, defaults to TRUE.
#'
#'   设置是否将 tooltip 限定在绘图区域内，默认为 true，即限定在绘图区域内。
#'
#' @param follow TRUE or FALSE, if TRUE the tooltip follows the mouse, defaults
#'   to TRUE. Not sure what this looks like if FALSE or if `triggerOn` is not
#'   "mousemove".
#'
#'   设置 tooltip 是否跟随鼠标移动。默认为 true，即跟随。
#'
#' @param shared TRUE or FALSE, <tbd>
#'
#'   设置 tooltip 只展示单条数据。
#'
#' @param enterable TRUE or FALSE, if TRUE the mouse may enter the tooltip,
#'   defaults to FALSE.
#'
#'   用于控制是否允许鼠标进入 tooltip，默认为 false，即不允许进入。
#'
#' @param position One of "top", "right", "bottom", or "left" specifying a
#'   fixed position for the tooltip.
#'
#' @param hideMarkers TRUE or FALSE, if TRUE the small highlight added around
#'   the current selected point or bar is not shown, defaults to FALSE.
#'
#'   对于 line、area、path 这三种几何图形，我们在渲染 tooltip 时会自动渲染 tooltipMarker ，通过声明该属性值为 true 来关闭 tooltipMarker。
#'
#' @param containerTpl A character string specifying an HTML template for the
#'   tooltip container. Defaults to,
#'   ```
#'   <div class="g2-tooltip">
#'     <div class="g2-tooltip-title" style="margin:10px 0;"></div>
#'     <ul class="g2-tooltip-list"></ul>
#'   </div>
#'   ```
#'
#'   如默认结构不满足需求，可以自定义该模板，但是自定义模板时必须包含各个 dom 节点的 class，样式可以自定义。
#'
#' @param itemTpl A character string specifying an HTML template for each
#'   item/field included in the tooltip. Defaults to,
#'   ```
#'   <li data-index={index}>
#'     <span style="background-color:{color};width:8px;height:8px;border-radius:50%;display:inline-block;margin-right:8px;"></span>
#'     {name}: {value}
#'   </li>
#'   ```
#'
#'   如默认结构不满足需求，可以自定义该模板，但是自定义模板时必须包含各个 dom 节点的 class，样式可以自定义。
#'
#' @param g2-tooltip CSS to apply to the class. Important, a separate style
#'   sheet may instead define styles for the `.g2-tooltip` class.
#'
#' @param g2-tooltip-title CSS.
#'
#' @param g2-tooltip-list CSS.
#'
#' @param g2-tooltip-list-item CSS.
#'
#' @param g2-tooltip-marker CSS.
#'
#' @examples
#'
tooltip <- function() {

}
