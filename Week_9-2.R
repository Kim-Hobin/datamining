## 9-2����

# ���� ȸ��
## lm�� �̿��� ����ȭ Ǯ��
x = c(3.0, 6.0, 9.0, 12.0)
y = c(3.0, 4.0 ,5.5, 6.5)
m = lm(y ~ x)
m
plot(x, y)
abline(m, col='red')

# ���� Ư��
coef(m) # �Ű躯��(���) ��
fitted(m) # �Ʒ������� ���ÿ� ���� ������ 
residuals(m) # ����
deviance(m) / length(x) # ���� �������� ��� ���� ������ ��ȯ�Ͽ� ��� MSE
summary(m)

# ���� �Լ�
newx = data.frame(x=c(1.2, 2.0, 20.65))
predict(m, newdata = newx)

# �ǽ�
str(cars)
head(cars)
plot(cars)
car_model=lm(dist~speed, data = cars)
coef(car_model)
abline(car_model, col="red")
fitted(car_model) # 4��° ���� (7, 22) 0.94 ������ 22 -> 12��ŭ ���� �߻�
residuals(car_model)

## �ü� 21.5�� �� �����Ÿ���?
nx1 = data.frame(speed=c(21.5))
predict(car_model, nx1)

## �ü� 25���� 0.5�� ������Ű�� �޷��� �� �����Ÿ��� ��ȭ
nx2 = data.frame(speed=c(25.0, 25.5, 26.0, 26.5, 27.0, 27.5, 28.0))
predict(car_model, nx2)

nx = data.frame(speed=c(21.5, 25.0, 25.5, 26.0, 26.5, 27.0, 27.5, 28.0))
plot(nx$speed, predict(car_model, nx), col="red", cex = 2, pch = 20)
abline(car_model)

## ����
x = c(10.0, 12.0, 9.5, 22.2, 8.0)
y = c(360.2, 420.0, 359.5, 679.0, 315.3)
m = lm(y ~ x)
plot(x, y)
abline(m, col='green')

newx = data.frame(x=c(10.5, 25.0, 15.0))
predict(m, newdata = newx)