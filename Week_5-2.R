# 5-2����

# �̻��� ���������� ǥ���ϰ�, NA���� �Լ��� ����Ͽ� ����
patients = data.frame(name = c("ö��", "����", "�浿"), age = c(22, 20, 25), 
                      gender = factor(c("M", "F", "K")), blood.type=factor(c("A", "O", "C")))
patients
patients$gender=ifelse((patients$gender=="K"), NA, patients$gender)
patients$blood.type=ifelse((patients$blood.type=="C"), NA, patients$blood.type)
patients
patients=patients[!is.na(patients$blood.type) & !is.na(patients$gender), ]
patients

# ������ ���� - ��ü���� ������ ������ �����͸� �����ų� �����ϴ� �۾�

## Base R Ȱ�� ������ ���� �ǽ�

library(gapminder) # ���� ������ ������, 1�δ� �����ѻ���, �α� ���� �����س��� �����ͼ��� ��� ����
library(dplyr)
glimpse(gapminder) # �Ⱦ��

gapminder[, c("country", "lifeExp")] # ������ 5�� �ֱ�� ����
gapminder[, c("country", "lifeExp", "year")]
gapminder[gapminder$country=="Croatia", ] 
gapminder[gapminder$country=="Croatia", "pop"]
gapminder[gapminder$country=="Croatia", c("lifeExp", "pop")]