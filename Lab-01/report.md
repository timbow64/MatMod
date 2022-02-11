---
# Front matter
title: "Лабораторная работа №1. Математическое моделирование."
subtitle: "Система контроля версий Git"
author: "Миша Нкого Хосе Адольфо Мба НФИбд-02-19"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
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

# Цель работы

Целью данной работы мы ставим изучение и применения средств контроля версий git, а также работу с различными командами в консоли.

# Выполнение лабораторной работы

## Создаем учетную запись на github.com. Создаем публичный репозиторий на github.com. 

![Создание репозитория на github.com.](image/Screenshot_1.png){ #fig:001 width=75% height=75% }

## Создаем локальный репозиторий. Инициализируем его. Создаем в нем файл README.md.

![Инициализация репозитория и файла README.md.](image/Screenshot_2.png){ #fig:002 width=75% height=75% }

## Создаем SSH-ключ. Прописываем его в настройках на сайте.

![Создание ключа и прописывание его на github.](image/Screenshot_3.png){ #fig:003 width=75% height=75% }

![Добавление ключа на github.com ](image/Screenshot_4.png){ #fig:004 width=75% height=75% }

## Загружаем и отправляем файлы лицензионного соглашения и gitignore в сетевой репозиторий.

![Загрузка файлов](image/Screenshot_5.png){ #fig:005 width=75% height=75% }

## Изучаем систему управления версиями файлов. Создаем ветку, начинаем и завершаем в ней релиз.

![Инициализация начала и завершения релиза ветки](image/Screenshot_6.png){ #fig:006 width=75% height=75% }

![Завершаем релиз. Отправляем список изменений в сетевой репозиторий](image/Screenshot_7.png){ #fig:007 width=75% height=75% }

## Выполним объединение веток

![Объединение веток в сетевом репозитории](image/Screenshot_8.png){ #fig:008 width=75% height=75% }

# Вывод

Мы изучили и применили средства контроля версий git, а также научились работать с различными командами в консоли.

# Список литературы {.unnumbered}

1. [Git для чайников](https://github.com/git-guides)
2. [Руководство по Markdown](https://gist.github.com/Jekins/2bf2d0638163f1294637)