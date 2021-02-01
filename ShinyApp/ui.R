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
              )),
              
              fluidRow(
                
                tabBox(width = 12, 
                       tabPanel("Number of Products Wished by Country", plotOutput("products_wished")),
                       tabPanel("Number of Products Bought by Country", plotOutput("products_bought"))
                ))
              
              
    )),
    tabItem(tabName = 'topbreakdown',
            fluidPage(
              fluidRow(
                tabBox(width = 12, 
                       tabPanel("Top Sellers by Country", plotOutput("top_seller"))
                ))
              
            )
            ),
    
    tabItem(tabName = 'yukti',
            fluidPage(
              
              fluidRow(column(offset = 2, width = 8,align="center", h1(tags$b("Yukti Kathuria")))),
      
              
              fluidRow(
                column(offset = 1, width = 12, img(src = "myyukti.jpg", height = 200),
                       box(
                  p("Yukti's love for stories began when she was a little girl. Over the years, she moved from bedtime stories to 
                  her parents' cooking adventure stories to grander and more mysterious fables of the stars, galaxies, and the universe. 
                  This prompted her voyage into aerospace engineering. She pursued a BS and MS in Aerospace Engineering 
                    from University of Illinois at Urbana-Champaign (UIUC), which she
                    received in 2018 and 2020."), 
                  p("While at UIUC, she explored numerous stories about rocket design, 
                  satellite orbits and control systems as well as characteristics and programming of UAV systems through a variety of classes and projects. 
                  Towards the end of her education, she had the most profound realization when she finally correlated 
                  her love for storytelling with data science and ML after a course in statistics."),
                  p("Since then, she has been on a mission to develop the skills required for her to pursue a career in this direction. 
                  She is currently working as a data science intern at CONDITION:BLACK and is also a fellow at
                    NYC Data Science Academy. She hopes to gain more experience and build a nuanced perspective 
                    on the latest tools and technologies used in the industry. 
                    In the future, she looks forward to enabling companies and organizations to employ 
                    data science tools to enhance decision-making in a meaningful way."))
                  
                ))
              
              
    )
  )
  
))
))


