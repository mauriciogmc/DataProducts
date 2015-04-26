library(googleVis)

shinyServer(
  
  function(input, output) {
    
    output$mapTitle <- renderText(noquote(paste("<h2>Top ", {input$filter}, " Most Populated Countries</h2>")))
    
    output$oid1 <- renderGvis(gvisGeoChart(Population[1:{input$filter},], 
                                           locationvar = "Country", 
                                           colorvar = "Rank", 
                                           options = list(width = 700,
                                                          height = 500, 
                                                          region={input$region},
                                                          colorAxis="{colors:['#0000FF', '#FFFFFF']}",
                                                          showLegend=FALSE              
                                                          )))
    
  
  }
  
)