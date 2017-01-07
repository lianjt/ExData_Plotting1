## read data
data <- read.table("household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880)
## convert from factor
data$V3 <- as.numeric(data$V3)
## make plot
png("plot1.png", width=480, height=480)
hist(data$V3, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (killowatts)", ylab = "Frequency")
dev.off()