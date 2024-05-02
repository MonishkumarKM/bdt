# DATA VISUALIZATION USING BOX PLOT PLOTTING FRAMEWORK
png(file = "boxplot.png")
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
ylab = "Miles Per Gallon", main = "Mileage Data")
dev.off()