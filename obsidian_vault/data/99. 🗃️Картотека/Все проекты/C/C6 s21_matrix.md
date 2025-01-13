---
share: true
tags:
  - project
project-type: individual
branch: "[[C]]"
xp: 250
xp-with-bonus: 
group: C - 1
social-link: https://t.me/S21_matrix
edu: https://edu.21-school.ru/project/26482
project-numeration: C6
deprecated: false
description: В этом проекте вы реализуете собственную библиотеку для обработки числовых матриц на языке программирования C.
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
