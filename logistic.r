#perform logistic regression
glm.auto<-glm(mpg01~cylinders+displacement+horsepower+weight,data=train)
glm.probs<-predict(glm.auto,test,type="response")
glm.probs
glm.pred<-ifelse(glm.probs>=0.5,1,0)
mean(glm.pred!=test.y)
