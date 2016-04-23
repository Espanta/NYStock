IBM <- read.csv("Data/IBMStock.csv")
Boeing <- read.csv("Data/BoeingStock.csv")
GE <- read.csv("Data/GEStock.csv")
CocaCola <- read.csv("Data/CocaColaStock.csv")
ProcterGamble <- read.csv("Data/ProcterGambleStock.csv")

# Conver date. I use two different ways.
IBM$Date <- as.Date(strptime(IBM$Date, "%m/%d/%y"))
GE$Date <- as.Date(strptime(GE$Date, "%m/%d/%y"))
Boeing$Date <- as.Date(strptime(Boeing$Date,"%m/%d/%y"))
CocaCola$Date <- as.Date(CocaCola$Date,"%m/%d/%y")
ProcterGamble$Date <- as.Date(ProcterGamble$Date,"%m/%d/%y")

summary(IBM)
#What is the minimum stock price of General Electric (GE) over this time period?

#What is the minimum stock price of General Electric (GE) over this time period?
summary(GE)

#What is the maximum stock price of Coca-Cola over this time period?
summary(CocaCola)

#What is the median stock price of Boeing over this time period?
summary(Boeing)

#What is the standard deviation of the stock price of Procter & Gamble over this time period?
sd(ProcterGamble$StockPrice)

#Using the plot function, plot the Date on the x-axis and the StockPrice on the y-axis, for Coca-Cola.
plot(CocaCola$Date,CocaCola$StockPrice,type="l",col="red")
lines(ProcterGamble$Date,ProcterGamble$StockPrice,col="blue",lty=2)
abline(v=as.Date("1983-01-01"),lwd=4,lty=3)



plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type="l", col="red", ylim=c(0,210))
lines(IBM$Date[301:432], IBM$StockPrice[301:432], type="l", col="black", ylim=c(0,210))
lines(Boeing$Date[301:432], Boeing$StockPrice[301:432], type="l", col="blue", ylim=c(0,210))
lines(GE$Date[301:432], GE$StockPrice[301:432], type="l", col="orange", ylim=c(0,210))
lines(ProcterGamble$Date[301:432], ProcterGamble$StockPrice[301:432], type="l", col="darkgreen", lwd=6)
#Which stock reaches the highest value in the time period 1995-2005?
abline(v=as.Date(c("1995-01-01","2005-01-01")))

abline(v=as.Date(c("1997-09-01","1997-11-01","1997-10-01")),lwd=3,col="red")
abline(v=as.Date(c("2004-01-01","2005-12-30")),lwd=3,col="red")

#Use the tapply command to calculate the mean stock price of IBM, sorted by months
tapply(IBM$StockPrice,months(IBM$Date), mean, na.rm=TRUE)
mean(IBM$StockPrice)

tapply(GE$StockPrice,months(GE$Date), mean, na.rm=TRUE)
mean(GE$StockPrice)

tapply(Boeing$StockPrice,months(Boeing$Date), mean, na.rm=TRUE)
mean(Boeing$StockPrice)

tapply(CocaCola$StockPrice,months(CocaCola$Date), mean, na.rm=TRUE)
mean(CocaCola$StockPrice)

tapply(ProcterGamble$StockPrice,months(ProcterGamble$Date), mean, na.rm=TRUE)
mean(ProcterGamble$StockPrice)
