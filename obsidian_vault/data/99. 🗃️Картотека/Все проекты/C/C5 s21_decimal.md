---
share: true
tags:
  - project
project-type: team
branch: "[[C]]"
xp: 800
xp-with-bonus: 
group: C - 1
social-link: https://t.me/+KvtB8PKDB2xlM2Qy
edu: https://edu.21-school.ru/project/26481
project-numeration: C5
deprecated: false
description: В этом проекте вы реализуете библиотеку s21_decimal.h на языке программирования C. Эта библиотека должна добавить возможность работы с типом "decimal", которого нет в стандарте языка.
---

## Заметки и статьи
```dataview
TABLE WITHOUT ID
    file.link AS "Название",
    s21-authors AS "Автор",
    date AS "Опубликовано"
FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
WHERE project = this.file.link
SORT date DESC, Название ASC
```
