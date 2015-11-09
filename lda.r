#perform LDA
library(MASS)
lda.auto<-lda(mpg01~cylinders+displacement+horsepower+weight,data=train)
lda.auto.pred<-predict(lda.auto,test)
mean(lda.auto.pred$class!=test.y)
