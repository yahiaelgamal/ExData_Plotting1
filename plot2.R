
dfa = read.table("household_power_consumption.txt", string=F, skip=66638, nrow=2880, sep=";")
ns = names(read.table("household_power_consumption.txt", string=F, nrow=20, sep=";", header=T))
names(dfa) = ns

dfa$Date = as.Date(head(dfa$Date), '%d/%m/%Y')
dfa$date_time = paste(dfa$Date, dfa$Time)
dfa$date_time = strptime(dfa$date_time, '%d/%m/%Y %X')


png('plot2.png')
plot(dfa$date_time, dfa$Global_active_power, type='l', xlab='', ylab='Global Active Power (killowatts)')
dev.off()

