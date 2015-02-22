library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Iris variable analysis"),
        sidebarPanel(
                h2('Parameters'),
                p('test'),   
                h3('X-axis'),
                p('Select a field for the X-axis'),
        
                selectInput("x", "X-axis:",
                            list(
                                    "Sepal length"= "Sepal.Length", 
                                    "Sepal width" = "Sepal.Width",  
                                    "Petal length" =  "Petal.Length", 
                                    "Petal width" = "Petal.Width"
                                 )
                            
                            ),
                
                h3('Y-axis'),
                p('Select a field for the Y-axis'),
                selectInput("y", "Y-axis:",
                            list(
                                    "Sepal length"= "Sepal.Length", 
                                    "Sepal width" = "Sepal.Width",  
                                    "Petal length" =  "Petal.Length", 
                                    "Petal width" = "Petal.Width"
                            )
                            
                )
                
        ),
        
        mainPanel(
                h3('Results'),
                
                plotOutput("Plot"),
                
                verbatimTextOutput("error")
        )
))  