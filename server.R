library(shiny)
library(plotly)
shinyServer(function(input, output) {
  
  formulaText <- reactive({
    paste("mpg (miles per gallon) vs ", input$variable)
  })
  
  output$caption <- renderText({
    formulaText()
  })
  output$mpgPlot <- renderPlot({
    ggplot(mtcars, aes_string(y=input$variable, x="mpg")) + geom_point() +stat_smooth(method = "lm", col = "pink")
  })
  
})