# IMPLEMENTATION OF FUZZY CLUSTERING
install.packages("factoextra") 
install.packages("magrittr") 
install.packages("cluster") 
library("factoextra") 
library("magrittr") 
library("cluster") 
library(cluster) 
df<-scale(USArrests)#
res.fanny<-fanny(df, 2)
head(res.fanny$membership, 3)
res.fanny$coeff
head(res.fanny$clustering)
library(factoextra) 
fviz_cluster(res.fanny, ellipse.type="norm", repel=TRUE, 
palette="jco", ggtheme=theme_minimal(), 
legend="right")