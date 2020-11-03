# 7-3����

# matplot �Լ�
matplot(iris[, 1:4], type="l") # 4���� ���� ��� ��
legend("topleft", names(iris)[1:4], lty=c(1,2,3,4), col=c(1,2,3,4)) # lty : ���� type

hist(cars$speed)

# ggplot2 ���̺귯��
## �ð�ȭ�� Ưȭ�� ���� ���� ����ϴ� ���̺귯��
## gg - grammar of graphics
ggplot(gapminder, aes(x=gdpPercap, y=lifeExp, col=continent)) + geom_point(alpha = 0.2) # alpha ������

## aes x�� y�� � �����͸� �־��� �;��� �����ִ� �Լ�
gapminder %>% filter(lifeExp>70) %>%group_by(continent) %>% summarize(n=n_distinct(country)) %>% ggplot(aes(x=continent, y=n)) + geom_bar(stat="identity")

## geom_point �Լ�
ggplot(gapminder, aes(x=gdpPercap, y=lifeExp, col=continent)) + geom_point(alpha = 0.2) # alpha ������

## geom_line �Լ� 

## geom_bar �Լ� aes�� x,y ��� �����ϰ�, stat="identity" �ɼ� �� �߰�
gapminder %>% filter(lifeExp>70) %>% group_by(continent) %>% summarize(n = n_distinct(country)) %>% ggplot(aes(x=continent, y = n)) + geom_bar(stat="identity")
### distinct �ߺ� ����

## geom_histogram �Լ�, ���븦 ���η� position = "dodge" ����
gapminder %>% filter(year == 2007) %>% ggplot(aes(lifeExp, col=continent)) + geom_histogram()

## scale_x_log10, scale_y_log10 �Լ�
ggplot(gapminder, aes(x=gdpPercap, y=lifeExp, col=continent)) + geom_point(alpha=0.2) + scale_x_log10()

## coord_filp �Լ�, �÷��� ������ ��ȯ

gapminder %>% filter(continent == "Africa") %>% ggplot(aes(country, lifeExp)) + geom_bar(stat="identity") + coord_flip()