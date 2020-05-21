library(datasets) # importing datasets pacakage

airquality<-datasets::airquality

head(airquality)  # to see first few rows (by default 6)
tail(airquality)  # to see last few rows (by default 6)

head(airquality,10) # to see first 10 rows 

airquality[,c(1,2)] # slicing

airquality$Wind    # to access one column

airquality[c(1,4),]

summary(airquality$Temp)  # to calculate the summary stats , use "summary"
summary(airquality)
summary(airquality$Wind)
summary(airquality[c(-2,-6)])

########plots####################

plot(airquality$Wind)
plot(airquality$Wind,airquality$Temp)   # plot between two fields
plot(airquality)   # plot for full data set

####### points and line

plot(airquality$Wind, type = 'l')   # p=points l =lines b=both

plot(airquality$Wind, xlab = 'index', ylab = 'ozone',main = 'ozone graph',
     col='red')



barplot(airquality$Wind, xlab = 'index', ylab = 'ozone',main = 'ozone graph',
        col='red',horiz = T)    ### barpot - horizontal

hist(airquality$Temp)   ### histogram

boxplot(airquality$Wind)  ### single box plot

boxplot(airquality[,1:4],main='multiple') ### multiple box plot

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) -- o/n
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)

par(mfrow=c(1,1),mar=c(2,1,1,12),  las=0, bty="n")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")

barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')
