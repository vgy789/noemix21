---
share: true
tags:
  - project
project-type: team
branch: "[[SQL]]"
xp: 
xp-with-bonus: 
social-link: https://t.me/+5xlNV70Bw1w5OTM6
edu: https://edu.21-school.ru/project/47708
deprecated: false
description: Сегодня вы будете реализовывать быстрое решение на SQL для достижения результатов задачи о путешествующем продавце.
---

Разбор team00 [https://youtu.be/oX_ght2m6B4](https://youtu.be/oX_ght2m6B4)

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
