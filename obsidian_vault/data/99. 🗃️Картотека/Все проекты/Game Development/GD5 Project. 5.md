---
share: true
tags:
  - project
project-type: 
branch: 
xp: 
xp-with-bonus: 
group: 
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
