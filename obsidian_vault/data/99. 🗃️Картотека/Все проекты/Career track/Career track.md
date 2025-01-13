---
share: true
tags:
  - project
project-type: module
branch: "[[data/data/02. 🎄Ветки/Career Track|Career Track]]"
xp: 1000
xp-with-bonus: 
social-link: 
edu: https://edu.21-school.ru/course/2306/projects
deprecated: false
description: Project 00, 01, 08 - обязательны для прохождения к дальнейшему доступу для вариатива и для выпуска. Career track. Project 02-07 - необязательны для прохождения, но обязательны для попадания в канал Internship.
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
