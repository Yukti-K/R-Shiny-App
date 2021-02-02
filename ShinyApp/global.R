library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)


users <- read.csv("data/users.csv", stringsAsFactors = FALSE)
countriestopsellers <- read.csv("data/countriestopsellers.csv", stringsAsFactors = FALSE)


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

users_by_seniority <- users %>%
  group_by(seniority,country) %>%
  summarise(total=n())%>%
  arrange(desc(total))

users_with_app <- users %>%
  group_by(hasAnyApp,countryCode) %>%
  summarise(total=n())

vec <- pull(country_top_10[,1])

appusers <- 
  users_with_app %>%
  filter(.,countryCode==vec[1] | countryCode==vec[2] | countryCode==vec[3] |
           countryCode==vec[4] | countryCode==vec[5] | countryCode==vec[6] |
           countryCode==vec[7] | countryCode==vec[8] | countryCode==vec[9] |
           countryCode==vec[10])

users_products_listed <- users %>%
  select(countryCode,gender,productsListed) %>%
  group_by(.,gender) %>%
  arrange(desc(productsListed)) %>%
  filter(.,countryCode==vec[1] | countryCode==vec[2] | countryCode==vec[3] |
           countryCode==vec[4] | countryCode==vec[5] | countryCode==vec[6] |
           countryCode==vec[7] | countryCode==vec[8] | countryCode==vec[9] |
           countryCode==vec[10]) 

users_products_sold <- users %>%
  select(countryCode,gender,productsSold) %>%
  group_by(.,gender) %>%
  arrange(desc(productsSold)) %>%
  filter(.,countryCode==vec[1] | countryCode==vec[2] | countryCode==vec[3] |
           countryCode==vec[4] | countryCode==vec[5] | countryCode==vec[6] |
           countryCode==vec[7] | countryCode==vec[8] | countryCode==vec[9] |
           countryCode==vec[10])

users_products_wished <- users %>%
  group_by(.,countryCode) %>%
  select(countryCode,gender,productsWished) %>%
  arrange(desc(productsWished)) %>%
  filter(.,countryCode==vec[1] | countryCode==vec[2] | countryCode==vec[3] |
           countryCode==vec[4] | countryCode==vec[5] | countryCode==vec[6] |
           countryCode==vec[7] | countryCode==vec[8] | countryCode==vec[9] |
           countryCode==vec[10]) 

users_products_bought <- users %>%
  group_by(.,countryCode) %>%
  select(countryCode,gender,productsBought) %>%
  arrange(desc(productsBought)) %>%
  filter(.,countryCode==vec[1] | countryCode==vec[2] | countryCode==vec[3] |
           countryCode==vec[4] | countryCode==vec[5] | countryCode==vec[6] |
           countryCode==vec[7] | countryCode==vec[8] | countryCode==vec[9] |
           countryCode==vec[10]) 

top_seller <- countriestopsellers %>%
  select(.,country,sellers,topsellers,femalesellers,malesellers) %>%
  group_by(sellers) %>%
  arrange(desc(topsellers)) %>%
  head(10) 

Ios <- users %>% filter(hasIosApp=="True")
Android <- users %>% filter(hasAndroidApp=="True")
AnyApp <- users %>% filter(hasAnyApp=="True")

IosPlot <- Ios %>%
  group_by(countryCode) %>%
  summarise(total=n()) %>%
  arrange(desc(total)) %>%
  head(15) 

AndroidPlot <- Android %>%
  group_by(countryCode) %>%
  summarise(total=n()) %>%
  arrange(desc(total)) %>%
  head(15) 