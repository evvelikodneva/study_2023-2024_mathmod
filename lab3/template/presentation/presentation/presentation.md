---
## Front matter
lang: ru-RU
title: Лабораторная работа №3
author:
  - Великоднева Е.В.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 24 февраля 2024

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

# Цели и задачи

## Цель работы

Рассмотреть некоторые простейшие модели боевых действий – модели Ланчестера. Построить графики для двух из трёх рассмотренных моделей.

## Задание

Между страной Х и страной У идет война. Численность состава войск исчисляется от начала войны, и являются временными функциями x(t) и y(t). В начальный момент времени страна Х имеет армию численностью 22 022 человек, а в распоряжении страны У армия численностью в 33 033 человек. Для упрощения модели считаем, что коэффициенты a, b, c, h постоянны. Также считаем P(t) и Q(t) непрерывные функции. Постройте графики изменения численности войск армии Х и армии У для следующих случаев:
1. Модель боевых действий между регулярными войсками

$\displaystyle \frac{dx}{dt} = -0,401x(t) - 0,707y(t) + sin(8t)$
$\displaystyle \frac{dy}{dt} = -0,606x(t) - 0,502y(t) + cos(6t)$

2. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов

$\displaystyle \frac{dx}{dt} = -0,343x(t) - 0,895y(t) + 2sin(2t)$
$\displaystyle \frac{dy}{dt} = -0,699x(t)y(t) - 0,433y(t) + 2cos(t)$

# Создание графика для первой модели:

Используя язык julia создала код для решения данных дифференциальных уравнений и построения графика:
using Plots
using DifferentialEquations
a, b, c, h = 0.401, 0.707, 0.606, 0.502
dt = 0.05
v0 = [22022, 33033]
function P(t)
    sin(8*t)
end
function Q(t)
    cos(6*t)
end


function equations(du, u, p, t)
    du[1] = - a*u[1] - b*u[2] + P(t)
    du[2] = - c*u[1] - h*u[2] + Q(t)
    return du
end

prob_sde = ODEProblem(equations, v0, (0.0, 1.0))
sol = solve(prob_sde, dt=dt)
plot(sol, xlabel="Шаг", ylabel="Численность армии")

# Создание графика для второй модели:

В коде поменяла входные значения и дифференциальные уравнения, чтобы код подходил для второго задания:
a, b, c, h = 0.343, 0.895, 0.699, 0.433
dt = 0.05
v0 = [22022, 33033]
function P(t)
    2*sin(2*t)
end
function Q(t)
    2*cos(t)
end


function equations(du, u, p, t)
    du[1] = - a*u[1] - b*u[2] + P(t)
    du[2] = - c*u[1]*u[2] - h*u[2] + Q(t)
    println(u)
end

# Результаты. Полученные графики


![График изменения численности войск для модели боевых действий между регулярными войсками](image/image/Screenshot(1245).png){#fig:001 width=50%}
![График изменения численности войск для модели боевых действий с участием регулярных войск и партизанских отрядов](image/image/Screenshot(1244).png){#fig:002 width=50%}

# Выводы

Научилась строить простейшие модели боевых действий.