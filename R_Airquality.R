airquality <- datasets::airquality

#top 10 rows n last 10 rows
head(airquality,10)
tail(airquality,10)


#columns
airquality[,c(1,2)]

df<-airquality[,-6]  #6th col removed

summary(airquality[,1])   #summary of 1st col

airquality$Wind    #wind col



#summary
summary(airquality)
summary(airquality$Wind)
summary(airquality$Ozone,airquality$Temp)



#plots
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")     #p=points l=lines
plot(airquality)


#points n lines
plot(airquality$Wind,type = "l")
plot(airquality, xlab = 'ozone concentration',
     ylab='no of insurance',
     main= 'ozone levels in NY city',
     col= 'blue')


# horizental barplot
barplot(airquality$Ozone,main = 'ozone concentration' ,ylab ='ozone levels', col='blue' ,horiz = F)

#histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar radiation values in air',xlab = 'solar red',col = 'grey')


#single box plot
boxplot(airquality$Wind,main="Boxplot")

#multiple box plot
boxplot(airquality[,1:4],main="Multiple")


