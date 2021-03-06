#graph B2

##Ben Bagozzi
##
##June 8th 2011
##
##Combine MC results
##
##
##
##

#clear memory  
rm(list=ls())                                           
library(car)
library(Hmisc)                                                     
library(mvtnorm)
library(foreign)
library(graphics)
library(MASS)
library(lattice)
library(tseries)
library(Matrix)
library(Design)
library(msm)
library(corpcor)
library(Zelig)


Results<-read.dta("/Users/bomin8319/Desktop/SpatialCure/simulation/main.data2.dta")
Results<-as.matrix(Results, )
resize.win <- function(Width=6, Height=6)
{
        # works for windows
    dev.off(); # dev.new(width=6, height=6)
    windows(record=TRUE, width=Width, height=Height)
}
resize.win(7,4)

par(mfrow=c(2,3))
par(cex.lab=1)
par(cex.axis=1)
par(cex.main=1)

par(mar=c(5.1,4.1,2.1,2.1))
#sets the bottom, left, top and right 

#B0
local.xlim<-c(-0.5,2.5)
local.ylim<-c(0,3.8)
plot(density(Results[,20],na.rm=TRUE), main = "",  ylab = "", xlab = "", xlim=local.xlim, ylim=local.ylim,col="blue", xaxt='n', yaxt='n')
abline(v=1,lty=3)
par(new=TRUE)
plot(density(Results[,24],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="red", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,34],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,66],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="forestgreen", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,72],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="orange", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,84],na.rm=TRUE), main = "", xlab = "Beta 0",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=.6, y =3.2, "Cure.Exp",col="red")
text (x=1.33, y =3.4, "Wei",col="forestgreen")
text (x=1.33, y =3.2, "Exp",col="blue")
text (x=0.6, y =3.4, "Spat.Cure.Wei",col="purple")
text (x=0.6, y =3.6, "Spat.Cure.Exp",col="pink")
text (x=0.6, y =3.0, "Cure.Wei",col="orange")
par(new=FALSE)
 

#B1
local.xlim<-c(3,3.9)
local.ylim<-c(0,6)
plot(density(Results[,22],na.rm=TRUE), main = "",  ylab = "", xlab = "", xlim=local.xlim, ylim=local.ylim,col="blue", xaxt='n', yaxt='n')
abline(v=3.5,lty=3)
par(new=TRUE)
plot(density(Results[,26],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="red", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,36],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,68],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="forestgreen", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,74],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="orange", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,86],na.rm=TRUE), main = "", xlab = "Beta 1",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=3.75, y =5, "Cure.Exp",col="red")
text (x=3.15, y =5, "Wei",col="forestgreen")
text (x=3.15, y =4.75, "Exp",col="blue")
text (x=3.75, y =4.75, "Spat.Cure.Wei",col="purple")
text (x=3.75, y =4.5, "Spat.Cure.Exp",col="pink")
text (x=3.75, y =4.25, "Cure.Wei",col="orange")
par(new=FALSE)

#B1
local.ylim<-c(0,13)
local.xlim<-c(0.6,1.2)
plot(density(Results[,70],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="forestgreen", xaxt='n', yaxt='n')
abline(v=1,lty=3)
par(new=TRUE)
plot(density(Results[,82],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="orange", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,94],na.rm=TRUE), main =" ", xlab = "P",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0.7, y =11.6, "Wei",col="forestgreen")
text (x=0.7, y =11, "Cure.Wei",col="orange")
text (x=1.1, y =6, "Spat.Cure.Wei",col="purple")
par(new=FALSE)

#B1
local.ylim<-c(0,.6)
local.xlim<-c(-5,2.5)
plot(density(Results[,28],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="red", xaxt='n', yaxt='n')
abline(v=-2,lty=3)
par(new=TRUE)
plot(density(Results[,38],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,76],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="orange", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,88],na.rm=TRUE), main = "", xlab = "Gamma 0",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=-3, y =0.55, "Cure.Exp",col="red")
text (x=-3, y =0.52, "Spat.Cure.Exp",col="pink")
text (x=-3, y =0.49, "Cure.Wei",col="orange")
text (x=-3, y =0.46, "Spat.Cure.Wei",col="purple")
par(new=FALSE)


#B1
local.ylim<-c(0,1.1)
local.xlim<-c(-5,2)
plot(density(Results[,30],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="red", xaxt='n', yaxt='n')
abline(v=-2,lty=3)
par(new=TRUE)
plot(density(Results[,40],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,78],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="orange", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,90],na.rm=TRUE), main = "", xlab = "Gamma 1",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0, y =1.0, "Cure.Exp",col="red")
text (x=0, y =0.95, "Spat.Cure.Exp",col="pink")
text (x=0, y =0.9, "Cure.Wei",col="orange")
text (x=0, y =0.85, "Spat.Cure.Wei",col="purple")
par(new=FALSE)

#B1
local.ylim<-c(0,1.4)
local.xlim<-c(0,6)
plot(density(Results[,32],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="red", xaxt='n', yaxt='n')
abline(v=3,lty=3)
par(new=TRUE)
plot(density(Results[,42],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,80],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="orange", xaxt='n', yaxt='n')
par(new=TRUE)
plot(density(Results[,92],na.rm=TRUE), main = "", xlab = "Gamma 2",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=4.5, y =1.05, "Cure.Exp",col="red")
text (x=4.5, y =0.99, "Spat.Cure.Exp",col="pink")
text (x=4.5, y =0.93, "Cure.Wei",col="orange")
text (x=4.5, y =0.87, "Spat.Cure.Wei",col="purple")
par(new=FALSE)








#B1
local.ylim<-c(0,1.7)
local.xlim<-c(0,3.5)
plot(density(Results[,54],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=1,lty=3)
par(new=TRUE)
plot(density(Results[,106],na.rm=TRUE), main = "", xlab = "lambda",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=2.5, y =1.0, "Spat.Cure.Exp",col="pink")
text (x=2.5, y =0.93, "Spat.Cure.Wei",col="purple")
par(new=FALSE)


#B1
local.ylim<-c(0,3)
local.xlim<-c(-1.5,1)
plot(density(Results[,44],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=-0.6428763,lty=3)
par(new=TRUE)
plot(density(Results[,96],na.rm=TRUE), main = "", xlab = "w1",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0.2, y =2, "Spat.Cure.Exp",col="pink")
text (x=0.2, y =1.9, "Spat.Cure.Wei",col="purple")
par(new=FALSE)

#B1
local.ylim<-c(0,2.8)
local.xlim<-c(-1.3,1.2)
plot(density(Results[,46],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=-0.2796147 ,lty=3)
par(new=TRUE)
plot(density(Results[,98],na.rm=TRUE), main = "", xlab = "w2",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0.3, y =2, "Spat.Cure.Exp",col="pink")
text (x=0.3, y =1.8, "Spat.Cure.Wei",col="purple")
par(new=FALSE)

#w3
local.ylim<-c(0,2.8)
local.xlim<-c(-1.3,1)
plot(density(Results[,48],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=-0.7002307 ,lty=3)
par(new=TRUE)
plot(density(Results[,100],na.rm=TRUE), main = "", xlab = "w3",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0, y =2, "Spat.Cure.Exp",col="pink")
text (x=0, y =1.85, "Spat.Cure.Wei",col="purple")
par(new=FALSE)


#w3
local.ylim<-c(0,2.6)
local.xlim<-c(-1.2,1.2)
plot(density(Results[,50],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=0.5647177 ,lty=3)
par(new=TRUE)
plot(density(Results[,102],na.rm=TRUE), main = "", xlab = "w4",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0, y =2, "Spat.Cure.Exp",col="pink")
text (x=0, y =1.85, "Spat.Cure.Wei",col="purple")
par(new=FALSE)


#w3
local.ylim<-c(0,2.7)
local.xlim<-c(-0.7,1.6)
plot(density(Results[,52],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=1.058004 ,lty=3)
par(new=TRUE)
plot(density(Results[,104],na.rm=TRUE), main = "", xlab = "w5",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0, y =2, "Spat.Cure.Exp",col="pink")
text (x=0, y =1.9, "Spat.Cure.Wei",col="purple")
par(new=FALSE)




#B1
local.ylim<-c(0,1.2)
local.xlim<-c(-0.6,2)
plot(density(Results[,56],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=0.8894233,lty=3)
par(new=TRUE)
plot(density(Results[,108],na.rm=TRUE), main = "", xlab = "v1",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=1.3, y =1, "Spat.Cure.Exp",col="pink")
text (x=1.3, y =0.95, "Spat.Cure.Wei",col="purple")
par(new=FALSE)

#B1
local.ylim<-c(0,1.3)
local.xlim<-c(-1.4,1.4)
plot(density(Results[,58],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=-0.3558618,lty=3)
par(new=TRUE)
plot(density(Results[,110],na.rm=TRUE), main = "", xlab = "v2",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0.5, y =1, "Spat.Cure.Exp",col="pink")
text (x=0.5, y =0.95, "Spat.Cure.Wei",col="purple")
par(new=FALSE)

#w3
local.ylim<-c(0,1)
local.xlim<-c(-2.5,1.5)
plot(density(Results[,60],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=-1.233308 ,lty=3)
par(new=TRUE)
plot(density(Results[,112],na.rm=TRUE), main = "", xlab = "v3",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=0, y =0.8, "Spat.Cure.Exp",col="pink")
text (x=0, y =0.75, "Spat.Cure.Wei",col="purple")
par(new=FALSE)


#w3
local.ylim<-c(0,1)
local.xlim<-c(-1.7,2.1)
plot(density(Results[,62],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=0.4097311,lty=3)
par(new=TRUE)
plot(density(Results[,114],na.rm=TRUE), main = "", xlab = "v4",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=1.5, y =0.8, "Spat.Cure.Exp",col="pink")
text (x=1.5, y =0.75, "Spat.Cure.Wei",col="purple")
par(new=FALSE)


#w3
local.ylim<-c(0,1.1)
local.xlim<-c(-1.9,1.2)
plot(density(Results[,64],na.rm=TRUE), main = "",  ylab = "", xlab = "",xlim=local.xlim, ylim=local.ylim,col="pink", xaxt='n', yaxt='n')
abline(v=0.2900151,lty=3)
par(new=TRUE)
plot(density(Results[,116],na.rm=TRUE), main = "", xlab = "v5",xlim=local.xlim, ylim=local.ylim,col="purple")
text (x=-1, y =1, "Spat.Cure.Exp",col="pink")
text (x=-1, y =0.95, "Spat.Cure.Wei",col="purple")
par(new=FALSE)

