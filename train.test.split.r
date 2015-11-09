#split data into training data and tesing data
length(sample(Auto$year))
set.seed(123456)
rownames(Auto)<-paste("" , 1:nrow(Auto), sep="")
train.auto<-sample(rownames(Auto))
train<-Auto[((train.auto)[1:196]),]
train.x<-train[,1:9]
train.y<-train[,10]
test<-Auto[((train.auto)[197:392]),]
test.x<-test[,1:9]
test.y<-test[,10]
