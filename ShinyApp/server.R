function(input, output, session){
  
  output$users_country <- renderPlot(
    country_top_10 %>% ggplot(.,mapping=aes(x= reorder(countryCode,-total),y=total))+geom_bar(stat ="identity")+ ggtitle("Users divided by country (Top 10 shown)") + 
      xlab("Countries (Limited to Top 10)") + ylab("Number of Users") + coord_flip()
    )
  
  output$users_language <- renderPlot(
    users_by_language %>% ggplot(.,mapping=aes(x= reorder(language,-total),y=total))+geom_bar(stat ="identity")+ ggtitle("Users divided by language") + 
      xlab("Language") + ylab("Number of Users") + coord_flip()
  )  
  
  output$users_gender <- renderPlot(
    users_by_gender %>% ggplot(.,mapping=aes(x= reorder(gender,-total),y=total))+geom_bar(stat ="identity")+ ggtitle("Users divided by gender") + 
      xlab("Gender") + ylab("Number of Users") + coord_flip()
  ) 
  
  output$users_seniority <- renderPlot(
    users_by_seniority %>% ggplot(.,mapping=aes(x= reorder(seniority,-total),y=total))+geom_bar(stat ="identity")+ ggtitle("Users divided by seniority") + 
      xlab("Seniority (measured in days)") + ylab("Number of Users") + coord_flip()
  ) 
  
  output$users_app <- renderPlot(
    appusers %>% ggplot(.,mapping=aes(fill=hasAnyApp,y=total,x=countryCode))+geom_bar(position="fill",stat="identity") + 
      xlab("Countries (Limited to Top 10)") + ylab("Number of Users")+ labs(fill = "Has App")+ coord_flip()
  )
  
  
  output$products_listed <- renderPlot(
    users_products_listed %>% ggplot(users_products_listed,mapping=aes(fill=gender,x=countryCode,y=productsListed))+geom_bar(position="fill",stat="identity")+
      xlab("Countries (Limited to Top 10)") + ylab("Ratio of products listed")+ labs(fill = "Gender")+ coord_flip()
  )

  output$products_sold <- renderPlot(
    users_products_sold %>% ggplot(users_products_sold,mapping=aes(fill=gender,x=countryCode,y=productsSold))+geom_bar(position="fill",stat="identity")+
      xlab("Countries (Limited to Top 10)") + ylab("Ratio of products sold")+ labs(fill = "Gender")+ coord_flip()
  )
  
  output$products_wished <- renderPlot(
    users_products_wished %>% ggplot(users_products_wished,mapping = aes(fill=countryCode,x=gender,y=productsWished))+geom_bar(position="fill",stat="identity") + 
      xlab("Gender") + ylab("Products Wished")+ labs(fill = "Top 10 Countries")
  )
  
  output$products_bought <- renderPlot(
    users_products_bought %>% ggplot(users_products_bought,mapping = aes(fill=countryCode,x=gender,y=productsBought))+geom_bar(position="fill",stat="identity") + 
      xlab("Gender") + ylab("Products Bought")+ labs(fill = "Top 10 Countries")
  )
  
  output$top_seller <- renderPlot(
    top_seller %>% ggplot(top_seller,mapping=aes(x=reorder(country,topsellers),topsellers))+geom_bar(stat="identity")+
      xlab("Country") + ylab("Number of topsellers")
  )
  
  output$AnyApp <- renderInfoBox(
    infoBox(title = "All Apps", value = nrow(AnyApp), color = "aqua", fill = FALSE)
  )
  
  output$Ios <- renderInfoBox(
    infoBox(title = "iOS", value = nrow(Ios), color = "aqua", fill = FALSE)
  )
  output$Android <- renderInfoBox(
    infoBox(title = "Android", value = nrow(Android), color = "aqua", fill = FALSE)
  )
  
  output$IosCountry <- renderPlot(
    IosPlot %>% ggplot(IosPlot,mapping=aes(x=reorder(countryCode,-total),total))+geom_bar(stat="identity")+
      ylab("Number of Users") + xlab("Country Code")+coord_flip()
  )
  
  output$AndroidCountry <- renderPlot(
    AndroidPlot %>% ggplot(IosPlot,mapping=aes(x=reorder(countryCode,-total),total))+geom_bar(stat="identity")+
      ylab("Number of Users") + xlab("Country Code")+coord_flip()
  )
  
  
}