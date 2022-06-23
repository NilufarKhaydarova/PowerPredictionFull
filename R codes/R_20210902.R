
power <- read.csv("GT Datasets/mean_power.csv")
head(power)

plot(power$Global_active_power[1:100],type="l")

weather <- read.csv("GT Datasets/sceaux_weather_data.csv")
head(weather)

plot(weather$temp[1:1112],type="l")
par(new=T)
plot(power$Global_active_power[1:1600250],type="l")

plot(power$Global_active_power,type="l")
acf(power$Global_active_power)

plot(weather$temp)
acf(weather$temp)

#######

acf(weather$max[1:50])
acf(power$Global_active_power[1:70000])
ccf(weather$max[1:50],power$Global_active_power[1:70000])
####

spec.pgram(weather$max[1:50])
spec.pgram(power$Global_active_power[1:70000])
spec.pgram(power$Voltage[1:70000])
#########################
########2008.4.15
power[700000,]
weather[487,]

plot(moving_average(power$Global_active_power[1:700000],1440),col="green")
plot(moving_average(power$Global_active_power[1:700000],1440*7),col="blue")
plot(weather$temp[1:487],col="red",type="l")

power_7 <- moving_average(power$Global_active_power[1:700000],1440*7)
temp_7 <- weather$temp[1:487]
ccf(power_7[5100:length(power_7)],temp_7)
#######

spec.pgram(weather$temp[1:487])
spec.pgram(power$Global_active_power[1:70000])
spec.pgram(power$Voltage[1:70000])
