# DATA VISUALIZATION USING LINE GRAPH PLOTTING FRAMEWORK
v <- c(7,12,28,3,41)
png(file = "line_chart_label_colored.jpg")
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",main = "Rain fall chart")
dev.off()