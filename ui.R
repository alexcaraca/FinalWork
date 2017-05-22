
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predicting the Price of Diamonds"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      h3(helpText("Please select:")),
      numericInput("car", label = h4("Carats"), min = 0, max = 6, step = 0.1, value = 2),
      selectInput("cut", label = h4("Cut"), 
                  choices = list("Fair" = "Fair", "Good" = "^Good",
                                 "Very Good" = "Very Good", "Premium" = "Premium",
                                 "Ideal" = "Ideal")),
      selectInput("col", label = h4("Color"), 
                  choices = list("D" = "D", "E" = "E", "F" = "F", "G" ="G", "H" = "H", 
                                 "I" = "I", "J" = "J"))
    ),
    
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot"),
    h4("The expected price of this diamond is:"),
    h3(textOutput("result"))
  )
)))
