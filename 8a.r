# DATA VISUALIZATION USING PIE CHART PLOTTING FRAMEWORK
x <- c(21, 62, 10, 53)
labels<- c("London", "New York", "Singapore", "Mumbai")
png(file = "city_title_colours.jpg")
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))
dev.off()