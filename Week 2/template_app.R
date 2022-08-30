#
# Template shinydashboard application
#
# Author: Owen Bezick
# June 27 2021


library(shiny)
library(shinydashboard)
library(DT)

# UI ----
ui <- dashboardPage(
    dashboardHeader(
        title = "Week Two"
    ),
    dashboardSidebar(disable = T
    ),
    dashboardBody(
        fluidRow(
            box(width = 6)
            , box(width = 6)
        )
        , fluidRow(
            box(width = 6,
               DTOutput("data")
               )
            , box(width = 6)
        )
    ),
    title = "Dashboard example"
)

# Server ----
server <- function(input, output) {
output$data <- renderDT({
    data(iris)
})
}

# Run the application 
shinyApp(ui = ui, server = server)
