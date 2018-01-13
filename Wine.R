df=read.csv("/users/kumar/downloads/wine.csv")
head(df)
dim(df)
str(df)
summary(df)
linreg=lm(Price~ Year+WinterRain+AGST+HarvestRain+Age+FrancePop,data=df)
lineeg2=lm(Price~. -Year-FrancePop, data=df) # . is for including all the columns 
summary(lineeg2)
cor(df)
V1=predict(lineeg2,data=df) #to get the predicted value
V2=df$Price
SSE=sum(c(V1-V2)^2)
SSE
TSS=sum(c(V2-mean(V2))^2)
TSS
R2= 1 - (SSE/TSS)
R2
MAPE=(sum(abs(V2-V1)/V2))/length(df$Price)
MAPE
RMSE=(sum(((V2-V1)^2)/length(df$Price)))^0.5
RMSE

plot(lineeg2)

library(data.table)
library(plyr)
library(stringr)
library(InformationValue)

train <- fread("/users/kumar/downloads/Tatanic_data/train.csv", na.strings= c(""," ",NA,"NA"))
#train <- read.csv("/user/kumar/downloads/Tatanic_data/train.csv",  na.strings =c(""," ",NA,"NA"))



