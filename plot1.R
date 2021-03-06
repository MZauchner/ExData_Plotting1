#load data
f <- file("household_power_consumption.txt")
data <- read.table(text = grep("^[1,2]/2/2007", readLines(f), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
#create histogramm
hist <- hist(data$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
#create pdf
dev.copy2pdf(device = quartz, file = "plot1.pdf")
#create png
png(filename="plot1.png")
hist(data$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")

dev.off()
