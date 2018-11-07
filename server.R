server <- function(input, output) {
    output$plot1 <- renderPlot({
        filtered <-
            cacao1 %>%
            filter(CocoaPercent >= input$cocoInput[1],
                   CocoaPercent <= input$cocoInput[2],
                   BeanType == input$typeInput,
                   Country == input$countryInput
            )
        ggplot(filtered, aes(CocoaPercent)) +
            geom_histogram()
        ggplotly(G)
    })
}