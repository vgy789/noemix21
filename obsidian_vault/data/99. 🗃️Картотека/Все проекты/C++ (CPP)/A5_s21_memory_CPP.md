---
share: true
tags:
  - project
project-type: team
branch: "[[C++ (CPP)]]"
xp: 250
xp-with-bonus: 
group: Algorithms - 2
social-link: 
edu: https://edu.21-school.ru/project/70756
project-numeration: A5
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
