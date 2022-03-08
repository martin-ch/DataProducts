#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Linear regression and regression line with mtcars"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput(
              "Dependent",
              "Dependent variable",
              c("Miles/gallon","Displacement","Horsepower","Rear axle ratio",
                "Weight in 1000lbs","1/4 mile time"),
              selected = "Miles/gallon",
              multiple = FALSE,
              selectize = TRUE,
              width = NULL,
              size = NULL
            ),
            selectInput(
              "Independent",
              "Independent variable",
              c("Miles/gallon","Number of cylinders","Displacement",
                "Horsepower","Rear axle ratio","Weight in 1000lbs",
                "1/4 mile time","Engine (0=V-shaped, 1=straight)",
                "Transmission (0=automatic, 1=manual)",
                "Number of forward gears","Number of carburetors"),
              selected = "Number of cylinders",
              multiple = FALSE,
              selectize = TRUE,
              width = NULL,
              size = NULL
            )
        ),

        # Show a plot of the generated distribution
        mainPanel(
          tabsetPanel( id = "main",
            tabPanel("Plot output", 
              plotOutput("distPlot"),
              h4("Coefficients of the linear model"),
              div(textOutput("xxx")),
              div(tableOutput("code"))),
            tabPanel("Documentation",
              h4("Data set mtcars"),
              div(p("For the purpose of this exercise we use the mtcars dataset 
                  that is part of RStudio. The data of the data set is an extract
                  of the 1974 Motor Trend US magazine and comprises fuel consumption
                  and 10 aspects of automobile design and performance for
                  32 automobiles (1973–74 models)."),
                  p("The following features are available in the mtcars dataset"),
                  p("mpg: Miles/gallon"),
                  p("cyl: Number of cylinders"),
                  p("disp: Displacement"),
                  p("hp: Horsepower"),
                  p("drat: Rear axle ratio"),
                  p("wt: Weight in 1000lbs"),
                  p("qsec: 1/4 mile time"),
                  p("vs: Engine (0=V-shaped, 1=straight)"),
                  p("am: Transmission (0=automatic, 1=manual)"),
                  p("gear: Number of forward gears"),
                  p("carb: Number of carburetors")
              ),
              h4("Selection of features"),
              div("On the left side of the page you can select one independent
                  and one dependent feature, which are used to display
                  a plot and the coefficients of the linear model of those
                  two selected features."),
              h4("Output"),
              div("If the dependent feature is a factor variable then a box plot
                  is shown, otherwise a scatter plot with a linear regression line
                  is displayed.")
            )
        ))
    )
))
