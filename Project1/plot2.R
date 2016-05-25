power<-read.table('household_power_consumption.txt',header=TRUE,sep=";", na.strings="?")
plotdata <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
time <-strptime(paste(plotdata$Date, plotdata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
plotdata <- cbind(time, plotdata)


with(plotdata,plot(time,Global_active_power,type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)"))
dev.copy(png,'plot2.png',width=480,height=480,units="px")
dev.off()