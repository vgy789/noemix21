---
share: true
tags:
  - project
project-type: team
branch: "[[SQL]]"
xp: 300
xp-with-bonus: 
group: SQL-1
social-link: 
edu: https://edu.21-school.ru/project/26583
deprecated: false
description: В этом проекте вам нужно будет создать базу данных с данными о школе 21 и написать процедуры и функции для получения информации, а также процедуры и триггеры для ее изменения.
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
