---
share: true
tags:
  - project
project-type: team
branch: "[[Python]]"
xp: 400
xp-with-bonus: 
group: Algorithms-1
social-link: 
edu: https://edu.21-school.ru/project/69122
deprecated: false
description: 
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
