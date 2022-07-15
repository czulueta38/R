#Question 1 Dataframe 1
idlist=c(123,245,387)
majorlist=c('Data Science','Pre Med','Public Health')
GPAlist=c(3.8,3.2,3.4)

df=data.frame(id=idlist,major=majorlist,GPA=GPAlist)
df

#Dataframe 2
idlist2=c(123,245,387)
dormlist=c('N','Y','Y')
state_list=c('Y','Y','N')
df2=data.frame(id=idlist, dorm=dormlist, in_state=state_list)

#Merged Dataframes 
df3=merge(df,df2,by="id")
df3
#Dataframe of major and instate only 
maj_state=df3[c("major","in_state")]
maj_state

#Question 2

Fibonacci <- function(num) {
if (num < 1)
  print("value.")
else {
  first <- 0      
  second <- 1     
  print(first)    
  if (num >= 2) {
    for (i in 2:num) {  
      print(second)     
      temp <- first + second  
      first <- second         
       second <- temp      
      }
    }
  }
}

Fibonacci(20)


#QUestion 3.1
library(MASS)
crab.data=MASS::crabs
crab.data
crab.data$wl.ratio=crab.data$CW/crab.data$CL
crab.data

#Question 3.2 Subset 1
subset1=subset(crab.data,subset=crab.data$sp=='B'& crab.data$sex=='M')
subset1

#Subset 2
subset2=subset(crab.data,subset=crab.data$sp=='B'& crab.data$sex=='F')
subset2

#Subset 3
subset3=subset(crab.data,subset=crab.data$sp=='O'& crab.data$sex=='M')
subset3

#Subset 4
subset4=subset(crab.data,subset=crab.data$sp=='O'& crab.data$sex=='F')
subset4

#Question 3.3 

boxplot(subset1$wl.ratio,subset2$wl.ratio,subset3$wl.ratio,subset4$wl.ratio,names=c("BM","BF","OM","OF"))

































