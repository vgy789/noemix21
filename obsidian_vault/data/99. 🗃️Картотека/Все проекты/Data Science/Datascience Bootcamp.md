---
share: true
tags:
  - project
project-type: intensive
branch: "[[Machine Learning]]"
xp: 1500
xp-with-bonus: 
group: Data Science - 1
social-link: 
edu: https://edu.21-school.ru/course/2308/
deprecated: false
description: Введение в Python, Pandas, науку о данных и машинное обучение.
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
