---
share: true
tags:
  - project
project-type: individual
branch: "[[Machine Learning]]"
xp: 
xp-with-bonus: 
group: 
social-link: 
edu: https://edu.21-school.ru/project/51499
deprecated: false
description: Вы получите базовые знания по управлению библиотеками Python и работе с виртуальными средами.
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
