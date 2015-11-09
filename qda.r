#perform QDA
qda.auto<-qda(mpg01~cylinders+displacement+horsepower+weight,data=train)
qda.auto.pred<-predict(qda.auto,test)
mean(qda.auto.pred$class!=test.y)
