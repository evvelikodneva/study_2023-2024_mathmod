---
## Front matter
lang: ru-RU
title: Лабораторная работа №7
author:
  - Великоднева Е.В.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 23 марта 2024

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Вводная часть

## Цели

Цель работы - рассмотреть модель рекламной кампании и решить задачу по этой теме.

## Задача

Постройте график распространения рекламы, математическая модель которой описывается
следующим уравнением:
1. $\displaystyle \frac{dn}{dt} = (0.94+0.000094n(t))(N-n(t))$
2. $\displaystyle \frac{dn}{dt} = (0.000094+0.94n(t))(N-n(t))$
3. $\displaystyle \frac{dn}{dt} = (0.94sin(t)+0.94sin(t)n(t))(N-n(t))$
При этом объем аудитории $\displaystyle N = 1040$ в начальный момент о товаре знает 9 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

# Выполнение лабораторной работы

## Код на julia

![Код для первого пункта](image/jcode1.png){#fig:001 width=70%}

## Код на julia

![Код для второго пункта](image/jcode2.png){#fig:002 width=30%}

## Код на julia

![Код для третьего пункта](image/jcode3.png){#fig:003 width=30%}

## Код в OpenModelica

![Код для первого пункта](image/mcode1.png){#fig:004 width=70%}

## Код в OpenModelica

![Код для второго пункта](image/mcode2.png){#fig:005 width=70%}

## Код в OpenModelica

![Код для третьего пункта](image/mcode3.png){#fig:006 width=70%}

## Код в OpenModelica

![Запуск симуляции для первого пункта](image/setup.png){#fig:007 width=70%}

## Графики для первого пункта

![График в julia](image/plot1.png){#fig:008 width=30%}

![График в OpenModelica](image/plot1M.png){#fig:009 width=30%}

## Графики для второго пункта

![График в julia](image/plot2.png){#fig:010 width=70%}

![График в OpenModelica](image/plot2M.png){#fig:011 width=70%}

## Нахождение момента, в который скорость распространения рекламы имеет максимальное значение

![График в OpenModelica](image/max_v.png){#fig:012 width=70%}

## Графики для третьего пункта

![График в julia](image/plot3.png){#fig:013 width=70%}

![График в OpenModelica](image/plot3M.png){#fig:014 width=70%}

# Выводы

## Выводы

Рассмотрела модель рекламной кампании, построила графики в julia и OpenModelica для всех трёх случаев из задачи. Нашла, в какой момент времени скорость распространения рекламы имеет максимальное значение по графику в OpenModelica.