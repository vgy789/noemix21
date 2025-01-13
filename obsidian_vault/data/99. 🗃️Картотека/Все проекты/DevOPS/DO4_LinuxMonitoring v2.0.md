---
share: true
tags:
  - project
project-type: individual
branch: "[[DevOPS]]"
xp: 350
xp-with-bonus: 
group: DO-2
social-link: 
edu: https://edu.21-school.ru/project/26563
deprecated: false
description: Мониторинг и исследование состояния системы в режиме реального времени.
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
