## read data
data <- read.table("household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880)
## get time and date
datetime <- strptime(paste(data$V1, data$V2, sep=" "), "%d/%m/%Y %H:%M:%S") 
## make plot
png("plot2.png", width=480, height=480)
plot(datetime, data$V3, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()