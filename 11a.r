# APPLICATION TO ADJUST THE NUMBER OF BINS IN THE HISTOGRAM USING R LANGUAGE
library(shiny) 
ui<- fluidPage(
titlePanel("Old Faithful Geyser Data"),
sidebarLayout(
sidebarPanel( sliderInput("bins",
"Number of bins:",
min = 1,
max = 50,
value = 30)
),
mainPanel(
plotOutput("distPlot")
)
)
)
server<- function(input, output) {
output$distPlot<- renderPlot({
x <- faithful[, 2]
bins<- seq(min(x), max(x), length.out = input$bins + 1)
})}
