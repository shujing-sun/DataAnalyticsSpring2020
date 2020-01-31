rm(list = ls())
EPI_data <- read.csv("/Users/sunshujing/Downloads/2010EPI_data.csv",skip=1)
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI <- EPI_data$EPI			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

summary(EPI)
fivenum(EPI,na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw=“SJ”
rug(EPI) 

#Cumulative density function?
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
#Quantile-Quantile?
par(pty="s") 
qqnorm(EPI)
qqline(EPI)
#Make a Q-Q plot against the generating distribution by: 
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

boxplot(EPI,DALY) 

qqplot(EPI,DALY)


EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)



#other data
GRUMP_data <- read.csv("/Users/sunshujing/Downloads/GPW3_GRUMP_SummaryInformation_2010.csv")

