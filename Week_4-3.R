# 4-3����
# ���ǹ�
# []�� ��/�� ���� ����
test = c(15, 20, 30, NA, 45)
test[test<40]
test[test%%3!=0] # ���� x
test[is.na(test)]
test[!is.na(test)]
test[test%%2==0& !is.na(test)]

## �����������ӿ��� Ȱ��
characters = data.frame(name=c("�浿", "����", "ö��"), age = c(30, 16, 21), 
                        gender = factor(c("M", "F", "M")))
characters
characters[characters$gender=="F", ]
characters[characters$age<30 & characters$gender =="M", ]

# if�� Ȱ��
x = 5
if(x %% 2 ==0) {
  print('x�� ¦��')
} else { 
  print('x�� Ȧ��')
}  

if(x %% 2 ==0) {
  print('x is a positive value')
} else if(x<0) { 
  print('x is a negative value')
} else {
  print('x is zero.')
}

# if/else���� ���ĳ��� ����
# ifelse(���ǽ�, ���ǽ��� ���� ��� ��ȯ��, ���ǽ��� ������ ��� ��ȯ��)
x = c(-5:5)
options(digits = 3)
sqrt(x)
sqrt(ifelse(x>0, x, NA))


# �ݺ��� - repeat, while, for
## repeat
i = 1
repeat {
  if(i>10) {
    break
  } else {
    print(i)
    i= i+1
  }
}

i = 1
while(i<=10) {
  print(i)
  i=i+1
}

i=1
while(i<10) {
  print(paste(2, "X", i, "=", 2*i))
  i = i+1
}

i= 1
for(i in 1:10) {
  print(i)
}

for(i in 2:9) {
  for(j in 1:9) {
    print( paste(i, "X", j, "=", i*j))
  }
}

i=1
for(i in 1:10) {
  if(i%%2==0) {
    print(i)
  }
}