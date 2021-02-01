### Question7 ####

#Load data
Sample_data<-read.csv("C:\\Users\\anirudh.kumar.verma.DIR\\Documents\\personal\\Learning\\DS\\Assisgnments\\Basic stat - Level 1\\Q7.csv")

#### stats/inferences for "point" variable #####

mean(Sample_data$Points)  ## 3.596563
median(Sample_data$Points)  # 3.695

names(table(Sample_data$Points))[table(Sample_data$Points)==max(table(Sample_data$Points))] # modes - "3.07" & "3.92"

var(Sample_data$Points)   # 0.2858814
sd(Sample_data$Points)  # 0.5346787
range(Sample_data$Points) # 2.76 4.93 
## Range value = 4.93 - 2.76
4.93 - 2.76 # 2.17


plot(Sample_data$Points)
barplot(Sample_data$Points) 
boxplot(Sample_data$Points) # no outlier
hist(Sample_data$Points) # looks like data is left skewed(+ve)
skewness(Sample_data$Points) # 0.2659039
kurtosis(Sample_data$Points) # -0.7147006 ,  negative kurtosis means data is flat

#### stats/inferences for "Score" variable #####

mean(Sample_data$Score)  ## 3.21725
median(Sample_data$Score)  # 3.325

names(table(Sample_data$Score))[table(Sample_data$Score)==max(table(Sample_data$Score))] # mode - "3.44"

var(Sample_data$Score)   # 0.957379
sd(Sample_data$Score)  # 0.9784574
range(Sample_data$Score) # 1.513 5.424
## Range value = 5.424 - 1.513
5.424 - 1.513 # 3.911

plot(Sample_data$Score)
barplot(Sample_data$Score) 
boxplot(Sample_data$Score) # 2 outliers on the higher side
hist(Sample_data$Score) # looks like data is left skewed(+ve)
skewness(Sample_data$Score) # 0.4231465
kurtosis(Sample_data$Score) # -0.02271075, slight negative kurtosis means data is slightly flat

#### stats/inferences for "Weigh" variable #####

mean(Sample_data$Weigh)  ## 17.84875
median(Sample_data$Weigh)  # 17.71

names(table(Sample_data$Weigh))[table(Sample_data$Weigh)==max(table(Sample_data$Weigh))] # modes - "17.02" "18.9" 

var(Sample_data$Weigh)   # 3.193166
sd(Sample_data$Weigh)  # 1.786943
range(Sample_data$Weigh) # 14.5 22.9 
## Range value = 22.9 - 14.5
22.9 - 14.5 # 8.4

plot(Sample_data$Weigh)
barplot(Sample_data$Weigh) 
boxplot(Sample_data$Weigh) # 1 outlier on higher side
hist(Sample_data$Weigh) # looks like data is left skewed(+ve)
skewness(Sample_data$Weigh) # 0.3690453
kurtosis(Sample_data$Weigh) # 0.3351142 

####### Question 8 #######

x<- c(108, 110, 123, 134, 135, 145, 167, 187, 199)
x
mean(x)
sd(x)
hist(x)
pnorm(x,145.3333,32.52307)
145.3333-32.52307

####### Question 9 #######

library(e1071)

#Load data
Q9_a<-read.csv("C:\\Users\\anirudh.kumar.verma.DIR\\Documents\\personal\\Learning\\DS\\Assisgnments\\Basic stat - Level 1\\Q9_a.csv")

barplot(Q9_a$speed,Q9_a$dist)
plot(Q9_a$speed,Q9_a$dist)

hist(Q9_a$speed)
skewness(Q9_a$speed) # right skewed
kurtosis(Q9_a$speed) # negative kurtosis , data is spread

hist(Q9_a$dist)
skewness(Q9_a$dist) # left skewed
kurtosis(Q9_a$dist) # positive kurtosis, more data is in 20-40 interval

#Load data
Q9_b<-read.csv("C:\\Users\\anirudh.kumar.verma.DIR\\Documents\\personal\\Learning\\DS\\Assisgnments\\Basic stat - Level 1\\Q9_b.csv")

hist(Q9_b$SP)
mean(Q9_b$SP)
skewness(Q9_b$SP) # left skewed
kurtosis(Q9_b$SP) # positive kurtosis , more data is in 110-120 interval

hist(Q9_b$WT)
mean(Q9_b$WT)
skewness(Q9_b$WT) # left skewed
kurtosis(Q9_b$WT) # positive kurtosis, more data is in 30-35 interval

####### Question 11 #######

install.packages("gmodels")
library(gmodels)

x<-200
s<-30
n<-2000
df<-2000-1
df
### 94 % CI ####
x-qt(0.94,df)*(s/sqrt(n))
x+qt(0.94,df)*(s/sqrt(n))
# [198.9566   201.0434]

### 98 % CI ####
x-qt(0.98,df)*(s/sqrt(n))
x+qt(0.98,df)*(s/sqrt(n))
# [198.6214   201.3786]

### 96 % CI ####
x-qt(0.96,df)*(s/sqrt(n))
x+qt(0.96,df)*(s/sqrt(n))
# [198.825   201.175]

##### question 12 #####

stu <- c(34,36,36,38,38,39,39,40,40,41,41,41,41,42,42,45,49,56)
mean(stu)
median(stu)
var(stu)
sd(stu)

'''
> mean(stu)
[1] 41
> median(stu)
[1] 40.5
> var(stu)
[1] 25.52941
> sd(stu)
[1] 5.052664
'''

boxplot(stu)
hist(stu)
### most of the students are scoring between 35 to 45 marks.
##49 and 56 are outliers

######## Question 20 #######

#Load data
Cars<-read.csv("C:\\Users\\anirudh.kumar.verma.DIR\\Documents\\personal\\Learning\\DS\\Assisgnments\\Basic stat - Level 1\\Cars.csv")

MPG <- Cars$MPG
MPG

#####  P(MPG>38)

mean(MPG) # 34.42208
sd(MPG) # 9.131445

1-pnorm(38,34.42208,9.131445)  # 0.3475941 ~ 34.75 %

##### 	P(MPG<40)

pnorm(40,34.42208,9.131445)  # 0.7293497 ~ 72.93 %

##### 	P (20<MPG<50)

pnorm(50,34.42208,9.131445) - pnorm(20,34.42208,9.131445) # 0.8988689 ~ 89.88%

######## Question 21 #######

## For 21 a) - data will be same of Question 20


mean(MPG) # 34.42208
sd(MPG) # 9.131445
median(MPG) # 35.15273
skewness(MPG) # -0.1714104
mean(MPG)-sd(MPG) # 25.29063
mean(MPG)+sd(MPG) # 43.55352

hist(MPG)
boxplot(MPG)

'''
looking at the values and histogram plot , we can interpret:
data doesnt follow normal distribution as 
Mean <> meadian
Total data that falls in the interval [25.29063   43.55352] is 50/81 ~ 61.7% . To follow ND , it should be 68%
ALso graphs are showing right skewness and skewness value is also negative.
'''

### 21 b)

#Load data
wc_at <- read.csv("C:\\Users\\anirudh.kumar.verma.DIR\\Documents\\personal\\Learning\\DS\\Assisgnments\\Basic stat - Level 1\\wc-at.csv")

## waist
waist <- wc_at$Waist

mean(waist) # 91.90183
sd(waist) # 13.55912
median(waist) # 90.8
skewness(waist) # 0.130389
mean(waist)-sd(waist) # 78.34272
mean(waist)+sd(waist) # 105.461

hist(waist)
boxplot(waist)

### 59 % data in interval . rest explanation will be same as above question.

## AT

AT <- wc_at$AT

mean(AT) # 101.894
sd(AT) # 57.29476
median(AT) # 96.54
skewness(AT) # 0.5688705
mean(AT)-sd(AT) # 44.59927
mean(AT)+sd(AT) # 159.1888

hist(AT)
boxplot(AT)

# not following Normal distribution

######## Question 22 #######

qnorm(0.90)
qnorm(0.94)
qnorm(0.60)

'''
> qnorm(0.90)
[1] 1.281552
> qnorm(0.94)
[1] 1.554774
> qnorm(0.60)
[1] 0.2533471
'''

qt(0.95,24)
qt(0.96,24)
qt(0.99,24)

'''
> qt(0.95,24)
[1] 1.710882
> qt(0.96,24)
[1] 1.828051
> qt(0.99,24)
[1] 2.492159
'''

##### Q 24 ###

n<-18
x<-260
s<-90
mu<-260
df<- 18-1

t = (x-mu)/(s/sqrt(n))

pt(t,df)  ## 0.5 ~ 50% 

