library(shiny)
shinyUI(navbarPage("106年各教育程度持卡人以信用卡支付食品餐飲類消費之總簽帳金額及筆數",
                   
                   tabPanel("介紹",tags$h1("觀察106年持卡人教育程度與以信用卡支付食品餐飲類消費之間的關係")),
                   
                   tabPanel(
                     "Raw Data",
                     tags$h1("Let's take a look at the dataset."),
                     br(),
                     fluidRow(column(
                       8,
                       tabPanel("Table",
                                DT::dataTableOutput("data.raw"))
                     ))
                   ),
                   
                   navbarMenu("教育程度",
                              
                              tabPanel("博士",
                                       
                                       plotOutput("博士")),
                              
                              tabPanel("碩士",
                                       plotOutput("碩士")),
                              tabPanel("大學",
                                       plotOutput("大學")),
                              tabPanel("專科",
                                       plotOutput("專科")),
                              tabPanel("高中高職",
                                       plotOutput("高中高職"))
                   )
)
)


##################
library(shiny)
library(ggplot2)
library(readr)
library(ggthemes)
library(forcats)

dta <- read.csv("123.csv", header=T, sep=",")


shinyServer(function(input, output) {
  
  output$博士<-renderPlot({
    ggplot(data=dta,aes(x=年月,y=博士,xmax=100,ymax=100))+geom_bar(width=1,stat="identity")+ggtitle(expression(atop("博士生106年消費金額",atop("")))) +theme(plot.title=element_text(size=20)) +theme_igray()+scale_colour_tableau()
  }, height = 600, width = 900)
  
  
  output$碩士<-renderPlot({
    ggplot(data=dta,aes(x=年月,y=碩士,xmax=100,ymax=100))+geom_bar(width=1,stat="identity")+ggtitle(expression(atop("碩士生106年消費金額",atop("")))) +theme(plot.title=element_text(size=20)) +theme_igray()+scale_colour_tableau()
  }, height = 600, width = 900)
  
  output$大學<-renderPlot({
    ggplot(data=dta,aes(x=年月,y=大學,xmax=100,ymax=100))+geom_bar(width=1,stat="identity")+ggtitle(expression(atop("大學生106年消費金額",atop("")))) +theme(plot.title=element_text(size=20)) +theme_igray()+scale_colour_tableau()
  }, height = 600, width = 900)
  
  output$專科<-renderPlot({
    ggplot(data=dta,aes(x=年月,y=專科,xmax=100,ymax=100))+geom_bar(width=1,stat="identity")+ggtitle(expression(atop("專科生106年消費金額",atop("")))) +theme(plot.title=element_text(size=20)) +theme_igray()+scale_colour_tableau()
  }, height = 600, width = 900)
  
  output$高中高職<-renderPlot({
    ggplot(data=dta,aes(x=年月,y=高中高職,xmax=100,ymax=100))+geom_bar(width=1,stat="identity")+ggtitle(expression(atop("高中高職生106年消費金額",atop("")))) +theme(plot.title=element_text(size=20)) +theme_igray()+scale_colour_tableau()
  }, height = 600, width = 900)
  
  output$data.raw <- DT::renderDataTable({
    DT::datatable(dta)
    
  })
  
  
  
  
  
})

