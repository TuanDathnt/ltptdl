#cau1
#cau1
cau1 <- read.table("data1.txt",header=TRUE)
loc_dulieu <- subset(cau1,tinh=='23' | tinh=='29' )
loc_dulieu
result_cau1 <- loc_dulieu[sample(nrow(loc_dulieu),7),]
result_cau1
cau2 <-read.table("data22.txt",header=TRUE)
attach(cau2)
so_luong_theo_nhom <- table(cau2[,2])
so_luong_theo_nhom
boxplot(Data ~ Group, data = cau2,
main = "Boxplot Phân Tích Dữ Liệu theo Nhóm",
xlab = "Nhóm", ylab = "Dữ Liệu",
col = c("green", "red"))
summary(cau2$Data[Group == "Nhom1"])
summary(cau2$Data[Group == "Nhom2"])
t.test(cau2$Data ~ cau2$Group)

#cau3
cau3<-read.table("data3.txt",header=TRUE)
par(mfrow=c(2,3))
cau3$color <- as.factor(cau3$Diadiem)
pairs(cau3[,c("Giamua", "Giaban")],
col=cau3$color,
main="Quan hệ giữa Giá mua và Giá bán theo Địa điểm",cex=1
)
legend("center", legend=levels(cau3$color), col=1:length(levels(cau3$color)), pch=1)

