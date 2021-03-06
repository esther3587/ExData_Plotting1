power <- read.table("household_power_consumption.txt",header = 'TRUE',sep=';',skip = 66636, nrows = 2880)
colnames(power) <- c('Date','Time','Global_active_power','Global_reactive_power','Voltage','Global_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3')
png(filename = "plot1.png",width = 480, height = 480, unit = "px")
hist(as.numeric(power$Global_active_power),col = 'red',xlab = 'Global Active Power (kilowatts)',main = 'Global Active Power')
dev.off()
