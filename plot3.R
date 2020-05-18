dt <- read.csv("~/Desktop/Coursera/4 Exploratory Analysis/Week 1/Assignment/ExploratoryDataAnalysis/household_power_consumption.txt", sep=";")

#convert the Date and Time variables to Date/Time classes
class(dt$Date)
dt$Date <- as.Date(dt$Date, format = "%d/%m/%Y")

#only be using data from the dates 2007-02-01 and 2007-02-02
begindate <- "2007-02-01"
enddate <- "2007-02-02"
subset <- subset.data.frame(dt, Date>=begindate)
subset <- subset.data.frame(subset, Date<=enddate)

#plot3 - Date / Energy sub metering
plot(subset$datetime,subset$Sub_metering_1,type="l",
     xlab="",ylab="Energy sub metering")
lines(subset$datetime,subset$Sub_metering_2, col='Red')
lines(subset$datetime,subset$Sub_metering_3,col='Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
