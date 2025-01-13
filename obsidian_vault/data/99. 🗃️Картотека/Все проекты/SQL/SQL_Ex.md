---
share: true
tags:
  - project
project-type: exam-module
branch: "[[SQL]]"
xp: 200
xp-with-bonus: 
group: SQL-1
social-link: 
edu: https://edu.21-school.ru/course/2300/
deprecated: false
description: Here are your SQL exams.
---

Предстоит сдать теорию [[SQL_Ex-t]] и… всё.

> [!info] 
>  У вас есть бесконечное число попыток чтобы сдать экзамен. `^_^`

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
