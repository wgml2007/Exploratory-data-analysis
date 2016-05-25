power<-read.table('household_power_consumption.txt',header=TRUE,sep=";", na.strings="?")
plotdata <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
time <-strptime(paste(plotdata$Date, plotdata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
plotdata <- cbind(time, plotdata)

labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(plotdata$time, plotdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(plotdata$time, plotdata$Sub_metering_2, col="red")
lines(plotdata$time, plotdata$Sub_metering_3, col="blue")
legend("topright", legend=labels, col=c("black", "red", "blue"), lty=1, lwd=2.5)
dev.copy(png,'plot3.png',width=480,height=480,units="px")
dev.off()