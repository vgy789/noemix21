---
share: true
tags:
  - project
project-type: individual
branch: "[[SQL]]"
xp: 
xp-with-bonus: 
social-link: https://t.me/+5xlNV70Bw1w5OTM6
edu: https://edu.21-school.ru/project/40964
deprecated: false
description: Сегодня вы увидите, как работает реляционная модель и как получить нужные данные на основе базовых конструкций SQL.
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
