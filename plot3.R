## read data
data <- read.table("household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880)
## convert from factor
data$V7 <- as.numeric(data$V7)
data$V8 <- as.numeric(data$V8)
data$V9 <- as.numeric(data$V9)
## make plot
png("plot3.png", width=480, height=480)
plot(datetime, data$V7, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, data$V8, type="l", col="red")
lines(datetime, data$V9, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()