library(shiny)
shinyUI(fluidPage(
  titlePanel("mtcars dataset for linear relationship of variables with respect to miles per gallon"),
  sidebarPanel(
    selectInput("variable", "Feature:", 
                c("Cylinders" = "cyl",
                  "Horsepower" = "hp",
                  "Weight" = "wt"))
  ),
  mainPanel(
    h3(textOutput("caption")),
    plotOutput("mpgPlot"),
    p("An inverse relationship can be observed")
  )
))