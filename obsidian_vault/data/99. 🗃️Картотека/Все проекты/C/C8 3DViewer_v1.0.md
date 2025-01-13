---
share: true
tags:
  - project
project-type: team
branch: "[[C]]"
xp: 900
xp-with-bonus: 
group: C - 2
social-link: https://t.me/+D2sccrQhVL5hOWYy
edu: https://edu.21-school.ru/project/26484
project-numeration: C8
deprecated: false
description: В этом проекте вам предстоит реализовать программу для просмотра трёхмерных каркасных моделей (3D Viewer).
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
