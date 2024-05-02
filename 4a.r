# IMPLEMENTATION OF LINEAR REGRESSION
X=c(151,174,138,186,128,136,179,163,152,131) 
Y=c(63,81,56,91,47,57,76,72,62,48) 
plot(X,Y) 
relation=lm(Y~X) 
print(relation) 
print(summary(relation)) 
a=data.frame(X=170) 
result=predict(relation,a) 
print(result) 
png(file="linearregression.png") 
plot(Y,X,col="green",main="Height & Weight Regression",abline(lm(X~Y)), 
cex=1.3,pch=16,Xlab="Weight in kg",Ylab="Height in cm") 
dev.off()