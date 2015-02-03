d <- loadData()
png(filename="plot2.png")
plot(d$DateTime,d$Global_active_power,type='l',xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

