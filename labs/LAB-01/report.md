---
# Front matter
title: "Отчёт по лабораторной работе №1"
subtitle: "Система контроля версий Git"
author: "Мохаммади Мохаммад Хафиз НФИбд-01-20"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
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
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является изучение идеологии и применения средств контроля версий.

# Теоретическая часть

Git — один из видов систем контроля версий (или СКВ). Такие системы записывают изменения в набор файлов, 
а позже позволяют вернуться к определенной версии.

Вам может пригодиться СКВ, если вы, например, программист, системный администратор, дизайнер 
(или в целом работаете с массивом изменяющихся файлов) и хотите сохранить каждую версию проекта. 
Вы сможете вернуться к любому из сохраненных состояний, просмотреть изменения и увидеть их авторов. 
Так гораздо проще исправлять возникающие проблемы.

Главная отличительная черта Git состоит в подходе к обработке данных. 
Каждый раз при сохранении данных проекта (коммите) система фиксирует состояние файла (делает снимок) 
и создает ссылку на этот снимок. Последующие изменения отражаются через ссылки на более ранние версии файла. 
Нет необходимости снова сохранять файл целиком. К тому же, основываясь на контрольных hash-суммах, система 
снимков обеспечивает целостность всей истории изменений. На практике это означает, что невозможно 
(либо крайне трудно) полностью удалить данные из рабочего каталога и утратить к ним любой доступ. 
В большинстве случаев данные можно восстановить из ранней версии проекта.

# Выполнение лабораторной работы

Создаем учетную запись на github.com и репозиторий на основе шаблона преподавателя.(рис. [-@fig:001])

![Создание репозитория](image/01.png){ #fig:001 width=70% height=70% }

Задаем конфигурацию пользователя и генерируем SSH-ключ(рис. [-@fig:002], [-@fig:003])

![SSH-ключ](image/02.png){ #fig:002 width=70% height=70% }

![SSH-ключ](image/03.png){ #fig:003 width=70% height=70% }

Оформили курс по данному шаблону и загрузили в репозиторий.(рис. [-@fig:004], [-@fig:005])

![git push](image/04.png){ #fig:004 width=70% height=70% }

![репозиторий](image/05.png){ #fig:005 width=70% height=70% }

# Вывод

Мы приобрели практические навыки работы с системой контроля версий git и создали свой репозиторий

# Список литературы {.unnumbered}

1. [Git для новичков](https://habr.com/ru/post/541258/)
2. [Основы Git](https://habr.com/ru/post/583478/)
3. [Руководство по оформлению Markdown файлов](https://gist.github.com/Jekins/2bf2d0638163f1294637)