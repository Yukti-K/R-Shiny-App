function(input, output, session){
  
  # Averages
  
  output$users_country <- renderPlot(
    country_top_10 %>% ggplot(.,mapping=aes(x= reorder(countryCode,-total),y=total))+geom_bar(stat ="identity")+ ggtitle("Users divided by country") + 
      xlab("Country Code") + ylab("Number of Users") + coord_flip()
    
    )
  
  
  

  
}