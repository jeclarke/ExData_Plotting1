d <- loadData()
par(mfrow=c(2,2))

plot(d$DateTime,d$Global_active_power,type='l',xlab="",ylab="Global Active Power")
plot(d$DateTime,d$Voltage,type='l',xlab="datetime",ylab="Voltage")
plot(d$DateTime,d$Sub_metering_1,type='l',xlab="",ylab="Energy sub metering")
lines(d$DateTime,d$Sub_metering_2,col="red")
lines(d$DateTime,d$Sub_metering_3,col="blue")
legend('topright', names(d)[7:9] ,  bty='n',
       lty=1, col=c('black', 'red', 'blue'), cex=.75)
plot(d$DateTime,d$Global_reactive_power,type='l',xlab="datetime")


