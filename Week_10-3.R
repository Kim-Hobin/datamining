# 10-3����

install.packages("rpart")
install.packages("randomForest")
library(rpart)

# library(rpart.plot)
# rpart.plot(r)
r = rpart(Species~., data=iris)
printcp(r)

# ����Ʈ���� �ؼ�
summary(r)

# ����Ʈ���� ���� 1. �ؼ� ���ɼ� 2. ���� ���� 3.�ӻ�� ������� Ȯ�� ���� -> ���� ������Ʈ

# ���� ������Ʈ
library(randomForest)
f = randomForest(Species~., data=iris)
f
plot(f)