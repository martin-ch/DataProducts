#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

factorCols <- c("cyl","vs","am","gear","carb")

df <- mtcars
df[,factorCols] <- lapply(df[,factorCols], factor)
names(df) <- c("Miles/gallon","Number of cylinders","Displacement",
                "Horsepower","Rear axle ratio","Weight in 1000lbs",
                "1/4 mile time","Engine (0=V-shaped, 1=straight)",
                "Transmission (0=automatic, 1=manual)",
                "Number of forward gears","Number of carburetors")

# Define server logic required to draw a plot
shinyServer(function(input, output, session) {

    output$distPlot <- renderPlot({

        plot(df[,input$Independent], df[,input$Dependent]
             , xlab=input$Independent
             , ylab=input$Dependent
             , main="Plot with the independent variable on the x-axis and the dependent variable on y-axis"
             , pch=19)
        if(!is.factor(df[,input$Independent]))
        {
          abline(lm(df[,input$Dependent]~df[,input$Independent], data=df), col="blue")
        }
      
    })
    output$code <- renderTable({
      if(is.factor(df[,input$Independent]))
      {
        fit <- lm(df[,input$Dependent]~df[,input$Independent]-1, data=df)
      } else
      {
        fit <- lm(df[,input$Dependent]~df[,input$Independent], data=df)
      }
      df <- as.data.frame(summary(fit)$coef)
      rownames(df) <- mapply(gsub, "df\\[, input[$]Independent\\]", paste(input$Independent, ""), rownames(df), USE.NAMES = FALSE)
      df$fit <- rownames(df)
      df[,c(5,1:4)]
    })
    observe({
      if (session$clientData$url_search=="?tab=Documentation") {
          try(updateTabsetPanel(session, "main", selected = "Documentation"))
          }
    })

})
