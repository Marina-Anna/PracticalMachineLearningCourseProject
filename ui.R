library(shiny)
library(ggplot2)
library(dplyr)
library(webshot)

cacao1 <- read.csv("flavors_of_cacao.csv", stringsAsFactors = FALSE)
ui <- fluidPage(
    titlePanel("Relationship between Percentage of coco & its Evaluation"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("cocoInput", "CocoaPercent", 0, 1, c(0.4, 0.8)),
            radioButtons("typeInput", "BeanType",
                         choices = c("Blend", "Fresh"),
                         selected = "Fresh"),
            selectInput("countryInput", "Country",
                        choices = c("Germany", "France", "Japan"))
        ),
        mainPanel(
            plotOutput("plot1"),
            br(), br(),
            tableOutput("results")
        )
    )
)
