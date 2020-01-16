##Reading data
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
##format
household_power_consumption$date <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time), "%d/%m/%Y %H:%M:%S")
household_power_consumption$Dt <- as.Date(household_power_consumption$Date, "%d/%m/%Y")
household_power_consumption_sub <- subset(household_power_consumption, Dt >= as.Date("2007-02-01") & Dt <= as.Date("2007-02-02"))
##Plot 1
hist(household_power_consumption_sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",  main = "Global Active Power")
