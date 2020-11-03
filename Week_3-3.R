# 3-3����

# ������ ������
name = c("ö��", "����", "�浿")
age = c(22, 20, 25)
gender = factor(c("M", "F", "M"))
blood.type = factor(c("A", "O", "B"))

patients = data.frame(name, age, gender, blood.type)
patients

## $ - �Ӽ��� ���
patients$name

## [, ] - ��� ���� ����
patients[1,]
patients[patients$name=="ö��",] # ',' ������ ����
patients[patients%name=="ö��", c("name", "age")] # ö�� �̸��� ���� ������ ����

# ������ ������ ���� �Լ�
## attach, detach - �������������� �Ӽ����� ���������� ���� -> $, [, ] ���x
head(cars)
spped # error 
attach(cars)
speed
detach(cars) # ����

## with - �� �̸��� ������ó�� �ٷ� ����Ͽ� �Լ�(����̳� �ִ밪)�� ����
mean(cars$speed)
with(cars, mean(speed))

## subset - �������������� �Ϻ� �����͸� ����
subset(cars, speed > 20) #�ӵ� 20�ʰ� �����͸� ����
subset(cars, speed>20, select=-c(dist)) # �ӵ� 20 �ʰ��� ������ �� dist�� ������ �����͸� ����

## na.omit - �������������� ������(NA) ����
head(airquality)
head(na.omit(airquality))

## merge - ���� ������ ������ ����]
name = c("ö��", "����", "�浿")
age = c(22, 20, 25)
gender = factor(c("M", "F", "M"))
blood.type=factor(c("A", "O", "B"))

patients1 = data.frame(name, age, gender)
patients2 = data.frame(name, blood.type)
patients = merge(patients1, patients2, by ="name")
patients