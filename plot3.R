d <- loadData()
png(filename="plot3.png")
plot(d$DateTime,d$Sub_metering_1,type='l',xlab="",ylab="Energy sub metering")
lines(d$DateTime,d$Sub_metering_2,col="red")
lines(d$DateTime,d$Sub_metering_3,col="blue")
legend('topright', names(d)[7:9] , 
       lty=1, col=c('black', 'red', 'blue'), cex=.75)
dev.off()
