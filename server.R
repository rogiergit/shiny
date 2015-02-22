#load the libraries
library(shiny)
library(ggplot2)
library(caret)
library(dplyr)

#load the iris data
data(iris)

#create a dataset
data<-iris

#start the shiny server
shinyServer(
        function(input, output) {
        
        output$Plot <- renderPlot({
                
                #check if the inputs for the x and y axis are not the same
                if(input$x != input$y) {
                        #use the input$x and $y to select the correct columns from the data
                        qplot(x=data[,input$x],y=data[,input$y], col=Species, data=data,xlab=input$x, ylab=input$y)
                }
                
                
                })
        
        output$error <- renderPrint(
                        #display this error message when the x and y axis are the same
                        if(input$x == input$y) {c("Please select a different X-axis and Y-axis.")}
                        )
        
        
        
        }
)