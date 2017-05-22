

library(shiny)
library(ggplot2)
library(dplyr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    # select diamonds depending of user input
    DMD <- filter(diamonds, grepl(input$cut, cut), grepl(input$col, color))
    # build linear regression model
    fitDMD <- lm( price~carat, DMD)
    # predicts the price 
    predDMD <- predict(fitDMD, newdata = data.frame(carat = input$car,
                                                    cut = input$cut,
                                                    color = input$col))
    # Drow the plot using ggplot2
    plot <- ggplot(data=DMD, aes(x=carat, y = price))+
      geom_point(aes(color = cut), alpha = 0.3)+
      geom_smooth(method = "lm")
    plot
  })
  output$result <- renderText({
    # renders the text for the prediction below the graph
    DMD <- filter(diamonds, grepl(input$cut, cut), grepl(input$col, color))
    fitDMD <- lm( price~carat, DMD)
    predDMD <- predict(fitDMD, newdata = data.frame(carat = input$car,
                                                    cut = input$cut,
                                                    color = input$col))
    viewDMD <- paste(round(predDMD, digits = 2), "USD")
    viewDMD
    })
  
})
