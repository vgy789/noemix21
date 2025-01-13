---
share: true
tags:
  - project
project-type: team
branch: "[[Python]]"
xp: 600
xp-with-bonus: 
group: AP Python-2
social-link: 
edu: https://edu.21-school.ru/project/72004
deprecated: false
description: В этом проекте вам предстоит создать веб-интерфейс для проекта SQL2 на языке Python.
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
