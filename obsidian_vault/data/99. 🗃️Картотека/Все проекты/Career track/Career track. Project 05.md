---
share: true
tags:
  - project
project-type: individual
branch: "[[data/data/99. 🗃️Картотека/Все проекты/Career track/Career track]]"
xp: 
xp-with-bonus: 
social-link: 
edu: https://edu.21-school.ru/project/51654/
deprecated: false
description: Проект познакомит вас с корпоративной культурой и безопасным обращением с информацией.
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
