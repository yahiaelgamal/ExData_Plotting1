small.dfa = read.csv("household_power_consumption.txt", string=F, nrow=10)

dfa = read.table("household_power_consumption.txt", string=F, skip=66638, nrow=2880, sep=";")
ns = names(read.table("household_power_consumption.txt", string=F, nrow=20, sep=";", header=T))
names(dfa) = ns


png('plot1.png')
hist(dfa$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main="Global Active Power")
dev.off()

