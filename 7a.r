# IMPLEMENTATION OF DENSITY BASED CLUSTERING
install.packages("factoextra") 
install.packages("magrittr") 
install.packages("cluster") 
library("factoextra") 
library("magrittr") 
library("cluster") 
install.packages("fpc") 
install.packages("dbscan") 
install.packages("factoextra") 
data("multishapes", package="factoextra") 
df<-multishapes[, 1:2] 
library("fpc") 
set.seed(123) 
db<-fpc::dbscan(df, eps=0.15, MinPts=5) 
library("factoextra") 
fviz_cluster(db, data=df, stand=FALSE, 
ellipse=FALSE, 
show.clust.cent=FALSE, 
geom="point",palette="jco", ggtheme=theme_classic())