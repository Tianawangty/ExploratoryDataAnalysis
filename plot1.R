dt <- read.csv("~/Desktop/Coursera/4 Exploratory Analysis/Week 1/Assignment/ExploratoryDataAnalysis/household_power_consumption.txt", sep=";")

#convert the Date and Time variables to Date/Time classes
class(dt$Date)
dt$Date <- as.Date(dt$Date, format = "%d/%m/%Y")

#only be using data from the dates 2007-02-01 and 2007-02-02
begindate <- "2007-02-01"
enddate <- "2007-02-02"
subset <- subset.data.frame(dt, Date>=begindate)
subset <- subset.data.frame(subset, Date<=enddate)

#plot1 - Global Active Power
hist(as.numeric(as.character(subset$Global_active_power)),
     col = "red", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", main = "Global Active Power")
