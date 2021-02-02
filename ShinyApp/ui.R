shinyUI(dashboardPage(
  dashboardHeader(title = "French Fashion Store"),
  dashboardSidebar(sidebarMenu(
    menuItem("Introductions", tabName = "intro", icon = icon("info")),
    menuItem("User Breakdown", tabName = "userdetails", icon = icon("bar-chart-o")),
    menuItem("Shopping Breakdown", tabName = "shoppingdetails", icon = icon("list-alt")),
    menuItem("Top Seller Breakdown", tabName = "topbreakdown", icon = icon("lemon")),
    menuItem("About Me", tabName = "yukti", icon = icon("address-card"))
    
      )),
  dashboardBody(
    
    tags$head(tags$style(HTML('
                                /* logo */
                                .skin-blue .main-header .logo {
                                background-color: #9966ff;
                                }

                                /* logo when hovered */
                                .skin-blue .main-header .logo:hover {
                                background-color: #9966ff;
                                }

                                /* navbar (rest of the header) */
                                .skin-blue .main-header .navbar {
                                background-color: #9966ff;
                                }

                                /* main sidebar */
                                .skin-blue .main-sidebar {
                                background-color: #9966ff;
                                }

                                /* active selected tab in the sidebarmenu */
                                .skin-blue .main-sidebar .sidebar .sidebar-menu .active a{
                                background-color: #EEEEEE;
                                }

                                /* other links in the sidebarmenu */
                                .skin-blue .main-sidebar .sidebar .sidebar-menu a{
                                background-color: #9966ff;
                                color: #000000;
                                }

                                /* other links in the sidebarmenu when hovered */
                                .skin-blue .main-sidebar .sidebar .sidebar-menu a:hover{
                                background-color: #EEEEEE;
                                }
                                /* toggle button when hovered  */
                                .skin-blue .main-header .navbar .sidebar-toggle:hover{
                                background-color: #9966ff;
                                }

                                /* body */
                                .content-wrapper, .right-side {
                                background-color: #9966ff;
                                }

                                '))),
    
    
    
    
    tabItems(
    tabItem(tabName = "intro", 
            fluidPage(
              fluidRow(column(offset = 2, width = 8,tags$head(tags$style('h1 {color:white;}')),
 h1(tags$b("Market Analytics For A French E-Commerce Fashion Store")))),
              br(),
              tags$style(HTML("


.box.box-solid.box-danger>.box-header {
  color:#fff;
  background:#9966ff
                    }

.box.box-solid.box-danger{
border-bottom-color:#9966ff;
border-left-color:#9966ff;
border-right-color:#9966ff;
border-top-color:#9966ff;
}

.box.box-danger>.box-header {
  color:#000000;
  background:#fff
                    }

.box.box-danger{
border-bottom-color:#9966ff;
border-left-color:#9966ff;
border-right-color:#9966ff;
border-top-color:#9966ff;
}

                                    ")),
              fluidRow(
                column(offset = 1, width = 12, box(title = "Problem Statement",status = "danger", solidHeader = TRUE,
                  p("For my data exploration project, I chose to use the web scraped data of an ecommerce French 
                    C2C store and analyzed the seller and user information based on a variety of characteristics.
                    I also analyzed the shopping habits as well as the top sellers information to present a holistic view 
                    of the analytics of a retail store, help monitor the health of the store as well as identify the key markets 
                    and users and sellers that could be targeted to improve engagement.")),
                  img(src = "fashion.jpg", height = 300)
              )))),
             
                
          
    tabItem(tabName = 'userdetails',
            fluidRow(
            
            tabBox(width = 12, 
                   tabPanel("Users by Country", plotOutput("users_country")),
                   tabPanel("Users by Language", plotOutput("users_language")),
                   tabPanel("Users by Gender", plotOutput("users_gender"))            )),
            
            fluidRow(box(width=12, align="center",title = "Key Insight",status = "danger", solidHeader = TRUE,
              p("Through the above graphs, it is clear that the countries with the biggest
              market for the target users are France, USA, Great Britain, Italy and Germany.
              However, the majority of the users use English as their preferred language,
              followed closely by French, Italian, German and Spanish. Additionally,
              majority of the users of the fashion store are female. Men only contribute
              to about 1/4th of the users.
                "))
            ),
            
            fluidRow(
              infoBoxOutput("AnyApp"),infoBoxOutput("Ios"),infoBoxOutput("Android"),
              tabBox(width = 12, 
                     tabPanel("Users by Apps", plotOutput("users_app")),
                     tabPanel("iOS Users by Country", plotOutput("IosCountry")),
                     tabPanel("Android Users by Country", plotOutput("AndroidCountry"))
              ) 
            ),
            fluidRow(box(width=12, align="center",title = "Key Insights",status = "danger", solidHeader = TRUE,
                         p("1. It is also suprising to note that the majority of 
                         the users of the e-commerce fashion store do not use the app
                         in order to buy or sell products as can be seen from the above
                         graph. Sweden, Denmark and Belgium have the highest amount of users
                         who use the app, which is surprising because my expectation was
                         that countries with the highest amount of users would have the highest
                         turnaround. However, this indicates that there is potential for the
                         store to expand the market with people who use the store but are
                         maybe not incentivized enough to use the app.
                "),br(),
                         p("2. Additionally, we can recognize that there is some relationship
                         between countries with the maximum users and if they used an 
                         app or not. However, it is harder to find a relationship between iOS and 
                         Android using countries. It seems that iOS in general is more
                         popular than Android among users. A lot more Spanish users used
                         Android apps in comparison to iOS apps and that is directly opposite
                        to the trend noticed among American users.
                        
                           ")
                         
                        
                         )
            ),
            
            ),
    tabItem(tabName = 'shoppingdetails',
            fluidPage(fluidRow(
              
              tabBox(width = 12, 
                     tabPanel("Products Listed by Gender", plotOutput("products_listed")),
                     tabPanel("Products Sold by Gender", plotOutput("products_sold"))
              )),
              fluidRow(box(width=12, align="center",title = "Key Insight",status = "danger", solidHeader = TRUE,
                           p("It is not suprising at all to note that the majority of 
                         the products listed are by females as can be seen from the
                         plot above. However, when we look at the male ratio of both 
                         products listed and products sold, it seems that Australia and
                         Italy are strong markets for men too.
                "))
              ),
              fluidRow(
                
                tabBox(width = 12, 
                       tabPanel("Number of Products Wished by Country", plotOutput("products_wished")),
                       tabPanel("Number of Products Bought by Country", plotOutput("products_bought"))
                )),
              fluidRow(box(width=12, align="center",title = "Key Insight",status = "danger", solidHeader = TRUE,
                           p("The above two plots show some interesting insights. First of them
                           is the fact that the products wished by men in France is much higher
                           than the products wished by women. This is important to note because
                           France is the biggest market for the fashion store as it is
                           the country the company is most directly targeting. Additionally other countries
                           with near equal ratios of products wished by men and women are Great Britain 
                           and USA, with men being higher than women in Great Britain and
                           only falling slightly short of women in USA.
                "),
                           
                    p("Additionally, the statistics follow the same trend closely in 
                      the amount of products bought. France has a higher conversion
                      rate for men than women. US falls slightly short for men like
                      it appeared in the trend for the amount of products wished.")
                )
              )
              
              
    )),
    tabItem(tabName = 'topbreakdown',
            fluidPage(
              fluidRow(
                tabBox(width = 12, 
                       tabPanel("Top Sellers by Country", plotOutput("top_seller"))
                )),
              fluidRow(box(width=12, align="center",title = "Key Insight",status = "danger", solidHeader = TRUE,
                           p("The top seller market looks relatively different from
                           the users market. It seems that the maximum sellers belong to
                           one of the following 10 countries: Latvia, Romania, Sweden, 
                           Bulgaria, Germany, USA, Spain, UK, France, Italy. It is expected
                           to see a high amount of French, American and UK sellers. However,
                           it is interesting to note that the maximum sellers come from Italy.
                           Additionally, companies like Latvia, Romania and Bulgaria are also quite
                           unexpected. However, it makes sense given more thought because these
                           countries provide cheaper alternatives to clothing in comparison to
                           some of the other more prominent EU companies.
                "))
              )
              
            )
            ),
    
    tabItem(tabName = 'yukti',
            fluidPage(
              
              fluidRow(column(offset = 2, width = 8,align="center", h1(tags$b("Yukti Kathuria")))),
      
              fluidRow(align="center",img(src = "myyukti.jpg", height = 200)),
br(),br(),
              fluidRow(align="center",
                       box(width = 11,title = "Bio", status = "danger", solidHeader = TRUE,
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
                  
                ),
              
              fluidRow(column(width = 8,align="center",box(align="center",title = "For More Info:", status = "danger", solidHeader = TRUE,tags$a(href="https://github.com/Yukti-K", "Github"),

br(),tags$a(href="https://www.linkedin.com/in/yukti-kathuria/", "LinkedIn")))
)
              
    )
  )
  
))
))


