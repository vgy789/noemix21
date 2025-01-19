---
share: true
date: 
tags:
  - note
  - nsk
project: 
s21-authors: 
branch: "[[DevOPS]]"
source: https://held-stingray-d76.notion.site/Alpine-Linux-f0782659335a40e285a06119bfbb8b79
title: Опыт использования Alpine Linux
---

## Опыт использования Alpine Linux
### Немного об Alpine Linux
Рассматриваемая ОС обладает рядом сильных преимуществ, которые, следствие одной ключевой особенности дистрибутива: “ничего лишнего”. Например, здесь, например, нет “из коробки” sudo, libstdC++ (CPP) и прочих библиотек. Конечно, их можно доставить.

Изначально моя идея в использовании Alpine Linux строилась на следующих плюсах:
- такая же ОС как Verter (тот же gcc из коробки);
- лёгкая;
- check.h, устанавливаемый через apk(менеджер пакетов) нужной, современной версии.

Немного повозившись я установил и работал в Alpine. По ощущениям, у меня в WSL, он более глючный, требует больше усилий для поддержания. Особой “легкости” я не ощутил.

На проекте SmartCalck я сломался - в Alpine не было шрифтов, все надписи на GUI кнопках были не надписями а квадратами. Дальше я разбираться не стал, в надежде на скорый выход Ubuntu 22.04 LTS (он вышел и прямо сейчас я его устанавливаю). Об Ubuntu - в основной статье.

_Здесь сохраню заметки о том, что мне потребовалось поставить в Alpine, мало ли пригодится._

### Установка Alpine и некоторых библиотек в ней.

Установка Alpine начинается с сайта Microsoft, и дистрибутив для WSL: [**](https://www.microsoft.com/ru-ru/p/alpine-wsl/9p804crf0395?activetab=pivot:overviewtab)[https://www.microsoft.com/ru-ru/p/alpine-wsl/9p804crf0395?activetab=pivot:overviewtab**](https://www.microsoft.com/ru-ru/p/alpine-wsl/9p804crf0395?activetab=pivot:overviewtab**)

установка пароля root wsl.exe --user root --distribution Alpine passwd

Без следующего пакета VSCode не сможет работать. Сразу после установки запустить: apk update && apk add libstdc++

**Нужные библиотеки для работы до проектов SmartCalc:**

- apk add git
- apk add openssh-client
- apk add cppcheck
- apk add valgrind
- apk add check-dev
- apk add gcc
- apk add make
- apk add libc-dev
- apk add gdb
- apk add gtk+3.0-dev - GTK-3
- apk add libc6-compat -без этого docker не работает

Установка Dockle для Alpine:

```bash
VERSION=$(
curl --silent "<https://api.github.com/repos/goodwithtech/dockle/releases/latest>" | \\\\
grep '"tag_name":' | \\\\
sed -E 's/.*"v([^"]+)".*/\\\\1/' \\\\
) && curl -L -o dockle.apk [<https://github.com/goodwithtech/dockle/releases/download/v${VERSION}/dockle_${VERSION}_Linux-64bit.apk>](<https://github.com/goodwithtech/dockle/releases/download/v$%7BVERSION%7D/dockle_$%7BVERSION%7D_Linux-64bit.apk>)
$ apk add --allow-untrusted dockle.apk && rm dockle.apk

```

#### **Вывод**

ОС Alpine хороша для создания “рабочих сред”, образов docker и т.п. Для разработки, постоянной смены окружения, библиотек не слишком удобно.
