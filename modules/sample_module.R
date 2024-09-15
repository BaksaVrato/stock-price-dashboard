sampleUI <- function(id) {
  tagList(
    numericInput(NS(id, "sampleIn"), "sample num inp", 10, min = 1),
    textOutput(NS(id, "sampleOut")) 
  )
  
}


sampleServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$sampleOut <- renderText(input$sampleIn) 
  })
}
library(quantmod)
  getSymbols("AMZN", src = "yahoo", from = "2020-01-01", to = "2024-01-01")
data <- as.data.frame(AMZN)
data