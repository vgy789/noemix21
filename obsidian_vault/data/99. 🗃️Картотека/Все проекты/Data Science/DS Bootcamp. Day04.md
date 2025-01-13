---
share: true
tags:
  - project
project-type: individual
branch: "[[Machine Learning]]"
xp: 
xp-with-bonus: 
group: 
social-link: 
edu: https://edu.21-school.ru/project/51500
deprecated: false
description: Сегодня мы поможем вам написать код, который будет работать быстрее.
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
