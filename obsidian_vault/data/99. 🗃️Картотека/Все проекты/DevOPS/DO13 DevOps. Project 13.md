---
share: true
tags:
  - project
project-type: individual
branch: "[[DevOPS]]"
xp: 800
xp-with-bonus: 
group: DO-3
social-link: 
edu: https://edu.21-school.ru/project/63934
deprecated: false
description: В этом проекте вы узнаете больше о CI/CD на базе Gitlab.
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
