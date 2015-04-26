shinyUI(pageWithSidebar(
  
  headerPanel("World Population Ranking"),
  
  sidebarPanel(
    
    sliderInput('filter', 'Ranking Filter',value = 20,
                min = 1, max = 50, step = 1, ticks=FALSE, 
                animate = animationOptions(interval = 3000, loop = TRUE)),
    
    radioButtons("region", "Zoom into Region",
                       c("Whole World" = "world",
                         "South America" = "005",
                         "North America" = "021",
                         "Central America" = "013",
                         "Asia/Pacific Region" = "035",
                         "Northern Europe" = "154",
                         "Southern Europe" = "039"
                         ))
  ),
  mainPanel(
    htmlOutput("mapTitle"),
    htmlOutput("oid1")  
  )
  
))