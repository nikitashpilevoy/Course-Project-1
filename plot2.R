data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
mydata <- data[which(data$Date =="2007-02-01" | data$Date == "2007-02-02"), ]
mydata$Time <- strptime(paste(as.Date(mydata$Date), mydata$Time), format = "%Y-%m-%d %H:%M:%S")
png(file="plot2.png")
plot(mydata$Time, mydata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()


