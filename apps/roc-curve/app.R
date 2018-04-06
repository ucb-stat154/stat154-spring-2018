
library(shiny)
library(caret)
library(ggplot2)
library(MASS)
library(pROC)


# simulated data with function quadBoundaryFunc() which
# creates a class boundary that is a function of both predictors. 
dat <- read.csv('train-data.csv')

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("ROC Curve"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        selectInput("method", "Select method", c("LDA", "QDA"), 
                    selected = "LDA"),
        sliderInput("threshold",
                     "Class-1 Probability Threshold",
                     min = 0,
                     max = 1,
                     value = 0.5),
         hr(),
         h5("Confussion Matrix"),
         tableOutput("confussion"),
         h5("Error Rate"),
         verbatimTextOutput("error_rate"),
         h5("Sensitivity"),
         verbatimTextOutput("sensitivity"),
         h5("Specificity"),
         verbatimTextOutput("specificity")
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        plotOutput("rocplot"),
        helpText("Area Under the Curve (AUC)"),
        verbatimTextOutput("auc")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   pred_class <- reactive({
     if (input$method == 'LDA') {
       pred_train_aux <- dat$ldaprob > input$threshold
     } else {
       pred_train_aux <- dat$qdaprob > input$threshold
     }
     factor(ifelse(pred_train_aux, 'Class1', 'Class2'))
   })
   tbl <- reactive({
     tbl <- table(obs = dat$class, pred = pred_class())
   })
   
   # sensitivity for train data
   sensi <- reactive({
     sensitivity(data = pred_class(),
                        reference = dat$class,
                        positive = "Class1")
   })
   
   # specificity for train data
   speci <- reactive({
     specificity(data = pred_class(),
                       reference = dat$class,
                       negative = "Class2")
   
   })
   
   output$confussion <- renderTable({
     # confusion matrix for training data
     data.frame(
       Obs = c("Class1", "Class2"),
       Pred1 = tbl()[,1],
       Pred2 = tbl()[,2]
     )
   })

   output$error_rate <- renderText({
     1 - sum(diag(tbl()) / sum(tbl()))
   })
   
   output$sensitivity <- renderText({
     sensi()
   })
   
   output$specificity <- renderText({
     speci()
   })
   
   train_roc <- reactive({
     # training data ROC Curve
     selected_prob <- switch(input$method,
                             'LDA' = dat$ldaprob,
                             'QDA' = dat$qdaprob)
     roc(
       response = dat$class,
       predictor = selected_prob,
       levels = rev(levels(dat$class)))
     })
     
   # LDA ROC curve
   output$rocplot <- renderPlot({
     plot(train_roc(), legacy.axes = TRUE, las = 1, lwd = 3, col = 'gray50')
     points(speci(), sensi(), pch = 19, col = "tomato", cex = 2)
   })

   output$auc <- renderText({
     auc(train_roc())
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

