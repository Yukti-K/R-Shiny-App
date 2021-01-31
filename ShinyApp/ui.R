shinyUI(dashboardPage(
  dashboardHeader(title = " French Fashion Store"),
  dashboardSidebar(sidebarMenu(
    menuItem("Introductions", tabName = "intro", icon = icon("info")),
    menuItem("User Breakdown", tabName = "userdetails", icon = icon("bar-chart-o")),
    menuItem("Shopping Breakdown", tabName = "shoppingdetails", icon = icon("list-alt")),
    menuItem("Top Seller Breakdown", tabName = "topbreakdown", icon = icon("lemon")),
##    selectizeInput("Characteristics",
##                   "Select category:",
##                   category_list, selected = 'Country'),
    menuItem("About Me", tabName = "yukti", icon = icon("address-card"))
    
      )),
  dashboardBody(tabItems(
    tabItem(tabName = "intro", 
            fluidPage(
              fluidRow(column(offset = 2, width = 8, h1(tags$b("Users of the C2C Fashion Store")))),
              br(),
              fluidRow(
                column(offset = 1, width = 10, box(
                  p("For my data exploration project, I chose to use the web scraped data of an ecommerce French 
                    C2C store and analyzed the seller and user information based on a variety of characteristics.
                    I also analyzed the shopping habits as well as the top sellers information.")
              ),
              fluidRow(

              ), 
              fluidRow(

              )
            )
    ),
    tabItem(tabName = 'userdetails',
            fluidPage(
              fluidRow(
                
              ),
              fluidRow(
                tabBox(
              ),
              
              fluidRow(

              ),
              fluidRow(                                                                                 
              )
            )
    ),
    tabItem(tabName = 'shoppingdetails',
            fluidPage(
              fluidRow(
                
              ),
                
              fluidRow(
              
              ),
              fluidRow(
                tabBox(
              ),
              fluidRow(
                
              ),
      
              fluidRow(
                
              ),
              fluidRow(
                
              )
            )
    ),
    tabItem(tabName = 'topbreakdown',
            fluidPage(
              fluidRow(
                
              
            )
            )
    ),
    tabItem(tabName = 'aboutme',
            fluidPage(
              
              fluidRow(
                
              )
    )
  )
  )
)
)
)
)
)
))

