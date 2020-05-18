dt <- read.csv("~/Desktop/Coursera/4 Exploratory Analysis/Week 1/Assignment/ExploratoryDataAnalysis/household_power_consumption.txt", sep=";")

#convert the Date and Time variables to Date/Time classes
class(dt$Date)
dt$Date <- as.Date(dt$Date, format = "%d/%m/%Y")

#only be using data from the dates 2007-02-01 and 2007-02-02
begindate <- "2007-02-01"
enddate <- "2007-02-02"
subset <- subset.data.frame(dt, Date>=begindate)
subset <- subset.data.frame(subset, Date<=enddate)

#plot4 - four pics together
par(mfrow=c(2,2))
with(subset,{
        plot(subset$datetime,as.numeric(as.character(subset$Global_active_power)),
             type="l",  xlab="",ylab="Global Active Power")  
        plot(subset$datetime,as.numeric(as.character(subset$Voltage)), 
             type="l",xlab="datetime",ylab="Voltage")
        plot(subset$datetime,subset$Sub_metering_1,type="n",xlab="",
             ylab="Energy sub metering")
        lines(datetime,as.numeric(as.character(Sub_metering_1)))
        lines(datetime,as.numeric(as.character(Sub_metering_2)),col="red")
        lines(datetime,as.numeric(as.character(Sub_metering_3)),col="blue")
        legend("topright", lty=1, col=c("black","red","blue"),
               legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.6)
        plot(subset$datetime,as.numeric(as.character(subset$Global_reactive_power)),
             type="l",xlab="datetime",ylab="Global_reactive_power")
})


