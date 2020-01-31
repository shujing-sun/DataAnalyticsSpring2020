#creating a dataframe
#Example: RPI Weather dataframe

days<- c('Mon','Tue','Wed','Thur','Fri','Sat','Sun') #days
temp <- c(28,30.5,32,31.2,29.3,27.9,26.4)
snowed <- c('T','T','F','F','T','T,','F')
help("data.frame")
RPI_Weather_Week <- data.frame(days,temp,snowed)

RPI_Weather_Week
head(RPI_Weather_Week)

str(RPI_Weather_Week)

summary(RPI_Weather_Week)

RPI_Weather_Week[1,]
RPI_Weather_Week[,1]

RPI_Weather_Week[,'snowed']
RPI_Weather_Week[,'days']
RPI_Weather_Week[,'temp']
RPI_Weather_Week[1:5,c("days","temp")]
RPI_Weather_Week$temp
subset(RPI_Weather_Week,subset = snowed==TRUE)

sorted.snowed <- order(RPI_Weather_Week['snowed'])
sorted.snowed
RPI_Weather_Week[sorted.snowed,]

dec.snow<-order(-RPI_Weather_Week$temp)
dec.snow

empty.dataframe <- data.frame()
v1 <- 1:10
v1
letters
v2 <- letters[1:10]
df <- data.frame(col.name.1=v1,col.name.2=v2)
df

write.csv(df,file='saved_df1.csv')
df2 <- read.csv('saved_df1.csv')
df2

help("read.csv")
A<-read.csv('2010EPI_data.csv')
GPW3_GRUMP_SummaryInformation_2010.csv
2010EPI_data.xls (EPI2010_all countries or EPI2010_onlyEPIcountries tabs)
data()
help(data)

EPI_data <- read.csv(”<path>/2010EPI_data.csv"))










                       