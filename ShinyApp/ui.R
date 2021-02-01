shinyUI(dashboardPage(
  dashboardHeader(title = " French Fashion Store"),
  dashboardSidebar(sidebarMenu(
    menuItem("Introductions", tabName = "intro", icon = icon("info")),
    menuItem("User Breakdown", tabName = "userdetails", icon = icon("bar-chart-o")),
    menuItem("Shopping Breakdown", tabName = "shoppingdetails", icon = icon("list-alt")),
    menuItem("Top Seller Breakdown", tabName = "topbreakdown", icon = icon("lemon")),
    menuItem("About Me", tabName = "yukti", icon = icon("address-card"))
    
      )),
  dashboardBody(tabItems(
    tabItem(tabName = "intro", 
            fluidPage(
              fluidRow(column(offset = 2, width = 8, h1(tags$b("Analytics For A French Fashion Store")))),
              br(),
              fluidRow(
                column(offset = 1, width = 12, box(
                  p("For my data exploration project, I chose to use the web scraped data of an ecommerce French 
                    C2C store and analyzed the seller and user information based on a variety of characteristics.
                    I also analyzed the shopping habits as well as the top sellers information.")),
                  img(src = "fashion.jpg", height = 200)
              )))),
             
                
          
    tabItem(tabName = 'userdetails',
            fluidRow(
            
            tabBox(width = 12, 
                   tabPanel("Users by Country", plotOutput("users_country")),
                   tabPanel("Users by Language", plotOutput("users_language")),
                   tabPanel("Users by Gender", plotOutput("users_gender")),
                   tabPanel("Users by Seniority", plotOutput("users_seniority"))
            )),
            
            fluidRow(
              tabBox(width = 12, 
                     tabPanel("Users by Apps", plotOutput("users_app"))
              ) 
            )
            
            ),
    tabItem(tabName = 'shoppingdetails',
            fluidPage(fluidRow(
              
              tabBox(width = 12, 
                     tabPanel("Products Listed by Gender", plotOutput("products_listed")),
                     tabPanel("Products Sold by Gender", plotOutput("products_sold"))
              ))
              
    )),
    tabItem(tabName = 'topbreakdown',
            fluidPage(
              fluidRow(
                
              
            )
            )
    ),
    tabItem(tabName = 'aboutme',
            fluidPage(
              
              fluidRow(column(offset = 2, width = 8, h1(tags$b("Yukti Kathuria")))),
              br(),
              fluidRow(
                column(offset = 1, width = 12, box(
                  p("Yukti Kathuria love for stories began when she was a little girl. Over the years, she moved from bedtime stories to 
                  her parents' cooking adventure stories to grander and more mysterious fables of the stars, galaxies, and the universe. 
                  This prompted her voyage into aerospace engineering. While she explored the different stories about how to make rockets 
                  or work with satellites or characterize and program UAV systems through a variety of classes and projects, 
                  the most profound realization she had was towards the end of her Master's degree when she finally correlated 
                  her love for storytelling with data science and ML after a course in statistics.
                  Since then, she has been on a mission to develop the skills required for her to pursue a career in this direction. 
                  She is currently working on a data science internship at CONDITION:BLACK and is also a fellow at
                    NYC Data Science Academy. She hopes to gain more experience and build a nuanced perspective 
                    on the latest tools and technologies used in the industry. 
                    In the future, she looks forward to enabling companies and organizations to employ 
                    data science tools to enhance decision-making in a meaningful way.")),
                  img(src = "yukti.jpg", height = 200)
                ))
    )
  )
  
))
))


