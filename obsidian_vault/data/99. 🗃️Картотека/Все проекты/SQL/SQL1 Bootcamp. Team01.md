---
share: true
tags:
  - project
project-type: team
branch: "[[SQL]]"
xp: 
xp-with-bonus: 
social-link: https://t.me/+5xlNV70Bw1w5OTM6
edu: https://edu.21-school.ru/project/40922
deprecated: false
description: Сегодня вы узнаете, что такое DWH и как создать первый процесс ETL.
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
