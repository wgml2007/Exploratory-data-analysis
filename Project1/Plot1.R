setwd("C:/Users/yongzhao/Desktop/R 2015/Exploratory data analysis")
power<-read.table('household_power_consumption.txt',header=TRUE,sep=";", na.strings="?")
plotdata <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
time <-strptime(paste(plotdata$Date, plotdata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
plotdata <- cbind(time, plotdata)
##plot 1
with(plotdata,hist(Global_active_power,col='red',main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.copy(png,"plot1.png",width=480,height=480,units="px")
dev.off()