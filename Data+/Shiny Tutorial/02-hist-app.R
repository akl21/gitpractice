```{r}
library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "num", 
    label = "Choose a number", 
    value = 25, min = 1, max = 100),
  plotOutput(outputId = "hist")
)

server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$num),
         main = "Histogram of Random Normal Values",
         xlab = "Random Normal Values")
  })
}

shinyApp(ui = ui, server = server)
```