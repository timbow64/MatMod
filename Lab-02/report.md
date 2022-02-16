---
# Front matter
lang: ru-RU
title: " Лабораторной работе №2 "
subtitle: "Задача о погоне - вариант № 38"
author: "Миша Нкого Хосе Адольфо Мба НФИбд-02-19"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the υalue makes tex try to haυe fewer lines in the paragraph.
  - \interlinepenalty=0 # υalue of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы:

Сегодня мы разберем один из случаев построения математической модели, в случае когда нам нужно выбрать правильную стратегию для решения задач поиска. 
Для примера мне был выдан вариант, где я должен рассмотреть задачу преследования браконьеров береговой охраной. Ее условия: "На море в тумане катер береговой охраны преследует лодку браконьеров. Через определенный промежуток времени туман рассеивается, и лодка обнаруживается на расстоянии k км от катера. Затем лодка снова скрывается в тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость катера в n раза больше скорости браконьерской лодки. 
Необходимо определить по какой траектории необходимо двигаться катеру, чтоб нагнать лодку." 


# Задача:

1. Изучить условия задачи. Сделать рассуждения на тему решения задачи
2. Вывести дифференциальное уравнение, беря в расчет условие, что скорость катера больше скорости лодки в n раз ( или меньше ) .
2. Рассчитать и построить траекторию движения катера и лодки для двух случаев. 
3. Определить по графику точку пересечения катера и лодки.



# Ход работы: 

* Принимаем за $t_0=0, X_0=0$  - место нахождения лодки браконьеров в момент, когда их обнаруживают катера береговой охраны. Также $X_0=k$   - место нахождения катера береговой охраны относительно лодки браконьеров в момент обнаружения лодки браконьеров.

* После введем полярные координаты. Будем считать, что полюс - это точка обнаружения лодки браконьеров $x_0=0 (\theta=x_0=0)$, а полярная ось r проходит через точку нахождения катера береговой охраны.

* Чтобы найти расстояние $x$ (расстояние после которого катер начнет двигаться вокруг полюса), необходимо составить простое уравнение. 

* Пусть через время $t$ катер и лодка окажутся на одном расстоянии $x$ от полюса, а за это время лодка пройдет $x$, в то время как катер $x-k$ (или $x+k$, в зависимости от начального положения катера относительно полюса). 

* Время, за которое они пройдут это расстояние, вычисляется как $\frac{x}{υ}$ или $\frac{x+k}{υ}$ (для второго случая $\frac{x-k}{υ}$).  Так как время одно и то же, то эти величины одинаковы. 

* Тогда неизвестное расстояние можно найти из следующего уравнения:  $\frac{x}{υ} = \frac{x+k}{υ}$ - в первом случае, $\frac{x}{υ} =  \frac{x-k}{υ}$ во втором случае.

* Отсюда мы найдем два значения $x_1$ и $x_2$, задачу будем решать для двух случаев : 

$x_1=\frac{k}{n+1}$ ,при $\theta=0$

$x_2=\frac{k}{n-1}$ ,при $\theta=-\pi$

# Ход работы: 

* После того, как катер береговой охраны окажется на одном расстоянии от полюса, что и лодка, он должен сменить прямолинейную траекторию и начать двигаться вокруг полюса удаляясь от него со скоростью лодки $υ$. Для этого скорость катера раскладываем на две составляющие: $υ_r$ - радиальная скорость и $υ_t$- тангенциальная скорость. Радиальная скорость - это скорость, с которой катер удаляется от полюса $υ_r=\frac{dr}{dt}$. Нам нужно, чтобы эта скорость была равна скорости лодки, поэтому полагаем $υ=\frac{dr}{dt}$.
* Тангенциальная скорость – это линейная скорость вращения катера относительно полюса. Она равна произведению угловой скорости $\frac{d\theta}{dt}$  на радиус $r$, $υr=r\frac{d\theta}{dt}$
* Найдем тангенциальную скорость для нашей задачи $υ_t=r\frac{d\theta}{dt}$.
* Вектора образуют прямоугольный треугольник, откуда по теореме Пифагора можно найти тангенциальную скорость $υ_t= \sqrt{n^2 υ_r^2-v^2}$. Поскольку, радиальная скорость равна $υ$, то тангенциальную скорость находим из уравнения $υ_t= \sqrt{n^2 υ^2-υ^2 }$. Следовательно, $υ_τ=υ\sqrt{n^2-1}$.

* Тогда получаем $r\frac{d\theta}{dt}=υ\sqrt{n^2-1}$

* Решение исходной задачи сводится к решению системы из двух дифференциальных уравнений : 

$$
 \begin{cases}
   \frac{dr}{dt}=υ
	\\   
	r\frac{d\theta}{dt}=υ\sqrt{n^2-1}
 \end{cases}
$$

* с начальными условиями

$$
 \begin{cases}
   \theta_0=0
   \\
	r_0=\frac{k}{n+1}
 \end{cases}
\
$$

$$
 \begin{cases}
   \theta_0=-\pi
   \\
	r_0=\frac{k}{n-1}
 \end{cases}
\
$$

* Исключая из полученной системы производную по t, можно перейти к следующему уравнению: $\frac{dr}{d\theta}=\frac{r}{\sqrt{n^2-1}}$

> Стоит заметить, что начальные условия остаются прежними. После того, как мы решим это уравнение, мы получаем траекторию движения катера в полярных координатах. 
>Теперь, когда нам известно все, что нам нужно, построим траекторию движения катера и лодки для двух случаев. 



## Условие задачи:

> На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка обнаруживается на расстоянии 19 км от катера. 
Затем лодка снова скрывается в тумане и уходит прямолинейно в неизвестном направлении. 
Известно, что скорость катера в 5.1 раза больше скорости браконьерской лодки



## Код программы: 

```
from math import *
import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plot

n=5.1 #разница в скорости движения
s=19 #расстояние обнаружения
fi=pi*3/4 #угол движения 

def f(tetha, r): #уравнение для катера береговой охраны
    dr=r/sqrt(n**2 - 1)
    return dr

def f2(t): # уравнение для лодки браконьеров
    xt = tan(fi+pi)*t
    return xt
	
r0=s/(n+1) #первый рассматриваемый случай случай


#решение диф.уравнения для катера береговой охраны
tetha = np.arange(0, 2*pi, 0.01)
r = odeint(f, r0, tetha)


#вычисление диф уравнения траектории лодки браконьеров
t=np.arange(0.00000000000001, 20)
r1=np.sqrt(t**2 + f2(t)**2)
tetha1=np.arctan(f2(t)/t)

plot.rcParams["figure.figsize"] = (10, 10)

plot.polar(tetha, r, 'red')
plot.polar(tetha1, r1, 'green')


#вычисление точки пересечения охраны и браконьеров
tmp=0
for i in range(len(tetha)):
    if round(tetha[i], 2) == round(fi+pi, 2):
        tmp=i
print("Тета:", tetha[tmp], "r:", r[tmp][0])
print("X:", r[tmp][0]/sqrt(2), "Y:", -r[tmp][0]/sqrt(2))

plot.legend()
plot.savefig("01.png",dpi=400)


r0=s/(n-1) #второй случай


#решение диф.уравнения для катера береговой охраны
tetha = np.arange(0, 2*pi, 0.01)
r = odeint(f, r0, tetha)



#вычисление траектории лодки браконьеров
t=np.arange(0.00000000000001, 20)
r1=np.sqrt(t**2 + f2(t)**2)
tetha1=np.arctan(f2(t)/t)

plot.rcParams["figure.figsize"] = (8, 8)

plot.polar(tetha, r, 'red', label = 'катер')
plot.polar(tetha1, r1, 'green', label = 'лодка')


#вычисление точки пересечения охраны и браконьеров
tmp=0
for i in range(len(tetha)):
    if round(tetha[i], 2) == round(fi+pi, 2):
        tmp=i
print("Тета:", tetha[tmp], "r:", r[tmp][0])
print("X:", r[tmp][0]/sqrt(2), "Y:", -r[tmp][0]/sqrt(2))

plot.legend()
plot.savefig("02.png",dpi=400)
```

## Результаты работы программы

![траектории для случая 1](image/01.png){ #fig:001 width=80% height=80% }

Точка пересечения красного и зеленого графиков является точкой пересечения катера береговой охраны и лодки браконьеров. Исходя из этого графика, мы имеем координаты: 
$$
 \begin{cases}
   \theta=315
   \\
	r=6.139
 \end{cases}
\
$$

![траектории для случая 2](image/02.png){ #fig:002 width=80% height=80% }

Точка пересечения красного и зеленого графиков является точкой пересечения катера береговой охраны и лодки браконьеров. Исходя из этого графика, мы имеем координаты: 
$$
 \begin{cases}
   \theta=315
   \\
	r=7.658
 \end{cases}
\
$$

Из этого можно сделать вывод, что при погоне «по часовой стрелке» для достижения цели потребуется пройти меньшее расстояния, а значит уйдет меньше времени на погоню.


# Выводы

Мы рассмотрели задачу о погоне, также провели анализ с помощью данных которые нам были даны, составили и решили дифференциальные уравнения. Смоделировали ситуацию и сделали вывод из модели ситуации.
