d <- loadData()
png(filename="plot1.png")
hist(d$Global_active_power,main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()
