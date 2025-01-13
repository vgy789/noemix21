---
share: true
tags:
  - project
project-type: intensive
branch: "[[SQL]]"
xp: 1500
xp-with-bonus: 
group: DataBases - 1
social-link: 
edu: https://edu.21-school.ru/course/2312/
deprecated: false
description: Database boot camp
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
