---
share: true
tags:
  - project
project-type: individual
branch: "[[C++]]"
xp: 500
xp-with-bonus: 
group: Algorithms - 2
social-link: 
edu: https://edu.21-school.ru/project/70781
project-numeration: A7
deprecated: false
description: В этом проекте вы познакомитесь с классическими проблемами биоинформатики, такими как поиск подстроки.
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
