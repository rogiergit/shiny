library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Species classification using iris characteristics"),
        sidebarPanel(
                h2('Parameters'),
                p('Please select a variable for the X-axis and the Y-axis. The plot will be drawn when 2 different variables are selected.'),   
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
                h3('Introduction'),
                p('This shiny app will allow you to explore the iris dataset from R. The dataset contains 4 iris characteristics that can be used to specify a species. In this app you can select a variable for X-axis and for the Y-axis. The plot will then show these 2 variables and colorcode the species.'),
                
                h3('Results'),
                
                plotOutput("Plot"),
                
                verbatimTextOutput("error")
        )
))  