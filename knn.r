library(class)
train.auto<-train[,2:5]
test.auto<-test[,2:5]
set.seed(123456)
#k=1
knn.predic.1<-knn(train.auto, test.auto, train.y, k = 1)
mean(knn.predic.1!= test.y)
#k=5
knn.predic.5<-knn(train.auto, test.auto, train.y, k = 5)
mean(knn.predic.5!= test.y)
#k=10
knn.predic.10<-knn(train.auto, test.auto, train.y, k = 10)
mean(knn.predic.10!= test.y)
#k=50
knn.predic.50<-knn(train.auto, test.auto, train.y, k = 50)
mean(knn.predic.50!= test.y)
#k=100
knn.predic.100<-knn(train.auto, test.auto, train.y, k = 100)
mean(knn.predic.100!= test.y)
