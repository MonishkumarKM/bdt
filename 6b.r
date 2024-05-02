# IMPLEMENTATION OF PARTITIONING CLUSTERING
install.packages("factoextra") 
install.packages("magrittr") 
install.packages("cluster") 
library("factoextra") 
library("magrittr") 
library("cluster") 
set.seed(123) 
km.res<-kmeans(my_data, 3, nstart=25) 
library("factoextra") 
fviz_cluster(km.res, data=my_data, 
ellipse.type="convex", 
palette="jco", 
ggtheme=theme_minimal())