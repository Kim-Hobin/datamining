# 11-3����

library(rpart)
# UCLA admission �ǽ�

# UCLA admission ������
ucla = read.csv('https://stats.idre.ucla.edu/stat/data/binary.csv')
str(ucla)

ucla$admit=factor(ucla$admit)
ucla$admit

# Dession Tree
r= rpart(admit~., data=ucla)
par(mfcol=c(1,1), xpd=NA)
plot(r)
text(r, use.n=TRUE)

# �Ʒ����տ� ���� ����
p = predict(r, ucla, type = 'class')
table(p, ucla$admit)

# randomForest ����
f = randomForest(admit~., data=ucla)
print(f)

# voice �ǽ�
voice = read.csv('./resource/voice.csv')
str(voice)
table(is.na(voice))

# f = randomForest