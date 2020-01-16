##Reading data
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
##format
household_power_consumption$date <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time), "%d/%m/%Y %H:%M:%S")
household_power_consumption$Dt <- as.Date(household_power_consumption$Date, "%d/%m/%Y")
household_power_consumption_sub <- subset(household_power_consumption, Dt >= as.Date("2007-02-01") & Dt <= as.Date("2007-02-02"))
##Plot 3
plot(household_power_consumption_sub$date, household_power_consumption_sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(household_power_consumption_sub$date, household_power_consumption_sub$Sub_metering_2, type = "l", col = "red")
points(household_power_consumption_sub$date, household_power_consumption_sub$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
