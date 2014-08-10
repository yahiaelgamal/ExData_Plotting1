

dfa = read.table("household_power_consumption.txt", string=F, skip=66638, nrow=2880, sep=";")
ns = names(read.table("household_power_consumption.txt", string=F, nrow=20, sep=";", header=T))
names(dfa) = ns

dfa$Date = as.Date(head(dfa$Date), '%d/%m/%Y')
dfa$date_time = paste(dfa$Date, dfa$Time)
dfa$date_time = strptime(dfa$date_time, '%d/%m/%Y %X')



png('plot3.png')
plot(dfa$date_time, dfa$Sub_metering_1, col='black', type='l', xlab='', ylab='Energy sub metering')
lines(dfa$date_time, dfa$Sub_metering_2, col='red', type='l')
lines(dfa$date_time, dfa$Sub_metering_3, col='blue', type='l')
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),  lty=c(1,1), lwd=c(2.5,2.5),col=c('black', 'red', 'blue')) 
dev.off()
