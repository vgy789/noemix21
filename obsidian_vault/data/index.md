---
share: true
cssclasses:
  - dashboard
banner: "[[wallpaper.jpg]]"
title: База знаний cообщества Школы 21
description: Учебные материалы, ссылки на чаты, записи лекций и мероприятий, информация по клубам — всё-всё здесь.
---

## 🔔 Новости `noemix 21`
```dataview
LIST
FROM "data/03. 🌱Ваши заметки"
WHERE contains(tags, "news/noemix")
```
___
## 🎄 [[Все ветки и проекты|Образовательные ветки]]
```dataview
LIST
FROM "data/02. 🎄Ветки"
WHERE !contains(tags, "index")
SORT file.name ASC
```
___
## 🏕️ Выбери свой кампус
```dataview
LIST
FROM "data/01. 🏕️Кампусы"
WHERE !contains(tags, "index")
SORT file.name ASC
```
___

## 🖇️ Ссылки
[[Проекты сообщества]]


Официальные пространства Школы
- [Сайт 21](https://21-school.ru)
- [Telegram: @school21sber](https://t.me/school21sber)
- [applicant](https://applicant.21-school.ru)
- [Платформа](https://edu.21-school.ru)
- [GitLab](https://repos.21-school.ru)

## ℹ️ О проекте…
- [[Лицензия]]
- [[О проекте|Что это за сайт такой]]
- [[Внести вклад]]
