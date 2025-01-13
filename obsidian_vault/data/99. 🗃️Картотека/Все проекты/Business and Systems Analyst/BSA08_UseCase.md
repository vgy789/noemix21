---
share: true
tags:
  - project
project-type: individual
branch: "[[BSA]]"
xp: 600
xp-with-bonus: 
group: BSA - 2
social-link: 
edu: 
deprecated: false
description: 
---

## Заметки и статьи
```dataview
TABLE WITHOUT ID
    file.link AS "Название",
    date AS "Опубликовано"
FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
WHERE project = this.file.link
SORT date ASC, Название ASC
```
