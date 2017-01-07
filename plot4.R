## read data
data <- read.table("household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880)
## get time and date for plot 1 & 2
datetime <- strptime(paste(data$V1, data$V2, sep=" "), "%d/%m/%Y %H:%M:%S") 
## convert from factor for plot 3
data$V7 <- as.numeric(data$V7)
data$V8 <- as.numeric(data$V8)
data$V9 <- as.numeric(data$V9)
## make plot
png("plot4.png", width=480, height=480)
## split the device
par(mfrow=c(2,2))
## plot 1
plot(datetime, data$V3, type="l", xlab="", ylab="Global Active Power")
## plot 2
plot(datetime, data$V5, type = "l", xlab = "datetime", ylab = "Vottage")
## plot 3
plot(datetime, data$V7, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, data$V8, type="l", col="red")
lines(datetime, data$V9, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
## plot 4
plot(datetime, data$V4, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()