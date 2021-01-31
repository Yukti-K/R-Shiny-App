library(shiny)
library(shinydashboard)
library(DT)
library(tidyverse)
library(lubridate)
library(ggthemes)
library(googleVis)
library(wesanderson)
library(RColorBrewer)
library(rex)

users <- read.csv("C:/Users/ykath/Desktop/Data Science Bootcamp Material/ShinyApp/data/users.csv", stringsAsFactors = FALSE)
sellers <- read.csv("C:/Users/ykath/Desktop/Data Science Bootcamp Material/ShinyApp/data/sellers.csv", stringsAsFactors = FALSE)
countriestopsellers <- read.csv("C:/Users/ykath/Desktop/Data Science Bootcamp Material/ShinyApp/data/countriestopsellers.csv", stringsAsFactors = FALSE)

category_list = c('Gender', 'Language', 'Country',
                 'Seniority')
users_by_country <- users %>%
  group_by(country) %>%
  summarise(total=n()) %>%
  arrange(desc(total))

users_by_language <- users %>%
  group_by(language) %>%
  summarise(total=n()) %>%
  arrange(desc(total))

users_by_gender <- users %>%
  group_by(gender) %>%
  summarise(total=n())

country_top_10 <-users %>%
  group_by(countryCode) %>%
  summarise(total=n()) %>%
  arrange(desc(total))%>%
  head(10)

