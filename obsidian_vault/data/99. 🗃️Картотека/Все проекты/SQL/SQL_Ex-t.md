---
share: true
tags:
  - project
project-type: exam
branch: "[[SQL]]"
xp: 
xp-with-bonus: 
social-link: 
edu: https://edu.21-school.ru/exam/68883
deprecated: false
description: Here are your SQL exams.
---

> [!info] 
>  У вас есть бесконечное число попыток чтобы сдать теорию. ^_-

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
