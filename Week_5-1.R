# 5-1����

# ����� ���� �Լ�
# �Լ��� = funtction (��������1, ��������2, ...) {
#          �Լ� ���� �� ������ �ڵ�
#          return(��ȯ��)
# }

# ������ ���� : ������ ó�� 
## is.na �Լ� - NA�� �����Ͱ� ������ T, ������ F
## na.omit �Լ� - NA�� �����͸� ����, �� NA�� ���Ե� ���� �����.
## �Լ��� �Ӽ� �̿� - na.rm=T�� ���� �Լ� �����, NA�� ����
str(airquality)
head(is.na(airquality))
table(is.na(airquality))
table(is.na(airquality$Temp))
mean(airquality$Temp)
head(na.omit(airquality))
air_narm = airquality[!is.na(airquality$Ozone), ] # ������ ������ ����
air_narm

air_narm1 = na.omit(airquality) # �����Ӹ� �ƴ϶� �������� �� �� ��� ����
air_narm2 = na.omit(airquality$Ozone)
mean(air_narm1$Ozone)
mean(air_narm2)
mean(airquality$Ozone, na.rm=T)
air_narm3 = airquality[!is.na(airquality$Ozone) & !is.na(airquality$Solar.R), ]
mean(air_narm3$Ozone)

# �̻� : ����п��� �̻��̶�, '�ٸ� �������� �ָ� ������ ������'
# ����) ���� : K, ������ : C
patients = data.frame(name = c("ö��", "����", "�浿"), age = c(22, 20, 25), 
                      gender = factor(c("M", "F", "K")), blood.type=factor(c("A", "O", "C")))

patients

## �̻� ����
patients_outrm = patients[patients$gender=="M"|patients$gender=="F", ]
patients_outrm