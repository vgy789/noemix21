---
share: true
tags:
  - project
project-type: intensive
branch: "[[SQL]]"
xp: 1500
xp-with-bonus: 
group: SQL-1
social-link: https://t.me/+5xlNV70Bw1w5OTM6
edu: https://edu.21-school.ru/course/2299/
deprecated: false
description: SQL Bootcamp
---

Это группа проектов. Всего предстоит сдать **12 проектов**!

1. [[SQL1 Bootcamp. Day00]]
1. [[SQL1 Bootcamp. Day01]]
1. [[SQL1 Bootcamp. Day02]]
1. [[SQL1 Bootcamp. Day03]]
1. [[SQL1 Bootcamp. Day04]]
1. [[SQL1 Bootcamp. Team00]]
1. [[SQL1 Bootcamp. Day05]]
1. [[SQL1 Bootcamp. Day06]]
1. [[SQL1 Bootcamp. Day07]]
1. [[SQL1 Bootcamp. Day08]]
1. [[SQL1 Bootcamp. Day09]]
1. [[SQL1 Bootcamp. Team01]]

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
