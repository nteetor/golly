# syntax exploration ----
chart <- G2$new(
  # container = "c1", ## use needn't know about selectors, print container later
  width = 600,
  height = 300
)

chart$source(data.frame(
  genre = c("Sports", "Strategy", "Action", "Shooter", "Other"),
  sold = c(275, 115, 120, 350, 150)
))

# interval(??) is equivalent to hist
chart$interval()$position(x = "genre", y = "sold")$color("genre")

chart$render()

# sample app ----
# up and running
shiny::shinyApp(
  ui = shiny::tagList(
    include(),
    htmltools::tags$div(id = "test"),
    htmltools::tags$script(
      htmltools::HTML(
        paste0(
          collapse = "\n",
          "const data = [",
          "{ year: '1991', value: 3 },",
          "{ year: '1992', value: 4 },",
          "{ year: '1993', value: 3.5 },",
          "{ year: '1994', value: 5 },",
          "{ year: '1995', value: 4.9 },",
          "{ year: '1996', value: 6 },",
          "{ year: '1997', value: 7 },",
          "{ year: '1998', value: 9 },",
          "{ year: '1999', value: 13 },",
          "];",
          "const chart = new G2.Chart({",
          "container: 'test',",
          "width: 600,",
          "height: 300",
          "});",
          "chart.source(data);",
          "chart.scale('value', {",
          "min: 0",
          "});",
          "chart.scale('year', {",
          "range: [ 0 , 1 ]",
          "});",
          "chart.tooltip({",
          "crosshairs: {",
          "type: 'line'",
          " }",
          "});",
          "chart.line().position('year*value');",
          "chart.point().position('year*value').size(4).shape('circle').style({",
          "stroke: '#fff',",
          "lineWidth: 1",
          "});",
          "chart.render();"
        )
      )
    )
  ),
  server = function(input, output) {

  }
)
