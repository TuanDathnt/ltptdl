#cau1
install.packages('reshape2')
library(reshape2)

data12=read.table('data12.txt',header=TRUE)
data12
cau1 = melt(data=data12,id=1,measure.vars = c(2,3,4),variable.name = "Mon Hang",value.name = 'value')
cau1


#cau2
install.packages("quantmod")
library(quantmod)
getSymbols(Symbols="GOOG")
chartSeries(GOOG,theme="white",subset="2023-09-01::2023-09-30")

#cau3
install.packages("BMA")
library(BMA)
data32 = read.table('data32.txt',header=TRUE)
attach(data32)
head(data32)

doclap =data32[,c(2,3,4,5)]
phuthuoc = data32[,1]
phuthuoc

hq32=bicreg(doclap,phuthuoc)
hq32
summary(hq32)
model <- lm(y ~ a1 + a2 + a3 + a4, data = data32)
summary(model)
step(model,direction = 'both')


#cau4
install.packages('cluster')
install.packages('factoextra')
library(factoextra)

cau4=read.table('data42.txt',header=TRUE)
head(cau4)


fviz_nbclust(cau4, kmeans, method='wss')
fviz_nbclust(cau4, kmeans, method='silhouette')
fviz_nbclust(cau4, kmeans, method='gap_stat')
cum<-kmeans(cau4,2)
fviz_cluster(cum,cau4)

