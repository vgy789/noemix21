---
share: true
tags:
  - project
project-type: team
branch: "[[SQL]]"
xp: 300
xp-with-bonus: 
group: SQL-2
social-link: 
edu: https://edu.21-school.ru/project/26585
deprecated: false
description: В этом проекте вам предстоит применить на практике свои знания по SQL. Вам нужно будет создать базу данных, содержащую информацию о клиентах розничной сети, и написать представления и процедуры, необходимые для создания персональных предложений.
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
