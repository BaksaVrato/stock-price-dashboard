
headerUI <- function(id, data) {
  ns <- NS(id)
  fluidRow(
    style = "padding-top: 10px; margin-bottom: 10px",
    column(8, titlePanel("Stock Price Dashboard")),
    column(2, selectInput(ns("time"), "Select time range:", c("1 year", "6 months", "1 month"), selected = "1 month")),
    column(2, selectInput(ns("stock"), "Select stock:", c(1,2,3), selected = 1))
  )
}

headerServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    
  })
}