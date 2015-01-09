data<-read.table("household_power_consumption.txt", sep=";", header=T, na.strings="?")
mydata<-subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
mydata<-mydata$Global_active_power
mydata<-as.numeric(mydata)
png(file="plot1.png")
hist(mydata, main="Global Active Power",xlab="Global Active Power(kilowatts)", col="red",)
dev.off()
