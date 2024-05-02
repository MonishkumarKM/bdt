# IMPLEMENTATION OF HIERARCHICAL CLUSTERING
install.packages("factoextra") 
install.packages("cluster") 
install.packages("magrittr") 
library("factoextra") 
library("cluster") 
library("magrittr") 
res.hc <- USArrests %>% 
scale() %>% 
dist(method = "euclidean") %>% 
hclust(method = "ward.D2") 
fviz_dend(res.hc, k = 4, 
cex = 0.5, 
k_colors = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"), 
color_labels_by_k = TRUE, 
rect = TRUE 
)