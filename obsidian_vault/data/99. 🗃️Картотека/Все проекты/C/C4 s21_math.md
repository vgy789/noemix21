---
share: true
tags:
  - project
project-type: team
branch: "[[C]]"
xp: 500
xp-with-bonus: 
group: C - 2
social-link: https://t.me/+PYp_Z2nGW_FjYmJi
edu: https://edu.21-school.ru/project/26480
project-numeration: C4
deprecated: false
description: В этом проекте вы разработаете собственную версию стандартной библиотеки math.h на языке программирования C. Эта библиотека реализует основные математические операции.
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
