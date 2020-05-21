equakes<-datasets::quakes

summary(equakes)
summary(equakes$long)

head(equakes,7)
tail(equakes,19)

equakes$stations

equakes[2,4]
equakes[c(2,4),c(3,5)]

plot(equakes$depth,xlab='ind',main='graph',bty='n',las=0)

hist(equakes$mag,col='green',bty='n',las=1)

###### measures of variability #########

sd(equakes$stations) # standard deviation
var(equakes$stations)  # variance
range(equakes$stations) # min and max values

#########################################

summary(equakes$stations)
mean(equakes$stations)
median(equakes$stations)
boxplot(equakes$stations)
