---
share: true
tags:
  - project
project-type: team
branch: "[[C++ (CPP)]]"
xp: 400
xp-with-bonus: 
group: Algorithms - 2
social-link: 
edu: https://edu.21-school.ru/project/70795
project-numeration: A8
deprecated: false
description: В этом проекте вы узнаете об алгоритмах интерполяции и аппроксимации.
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
