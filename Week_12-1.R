# 12-1����

# ���� ���� ���� �߻� ����
## 1) ������ ��Ȯ�Ǽ�
## 2) �������� �ҿ�����

library(rpart)
library(randomForest)

f = randomForest(Species~., data=iris)
f

small_forest=randomForest(Species~., data=iris, ntree=1)
small_forest
small_forest=randomForest(Species~., data=iris, ntree=5)
small_forest
small_forest=randomForest(Species~., data=iris, ntree=7)
small_forest
small_forest=randomForest(Species~., data=iris, ntree=9)
small_forest