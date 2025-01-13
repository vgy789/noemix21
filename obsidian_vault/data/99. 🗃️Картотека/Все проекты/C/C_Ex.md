---
share: true
tags:
  - project
project-type: exam-module
branch: "[[C]]"
xp: 200
xp-with-bonus: 
group: C - 1
social-link: 
edu: https://edu.21-school.ru/course/2296/
project-numeration: 
deprecated: false
description: 
---

| edu:           | [Ссылка](https://edu.21-school.ru/course/2296/) |
| -------------- | ----------------------------------------------- |
| description:   |                                                 |
| branch:        | [[C]]                                           |
| project type:  | exam-module                                     |
| xp:            | 200                                             |
| xp with bonus: |                                                 |
| deprecated     | no                                              |


Это группа проектов. Отдельно предстоит сдать теорию [[C_Ex-t]] и практику [[C_Ex-p]].

> [!info]
> У вас есть **2 попытки** чтобы сдать практический экзамен [[C_Ex-p]]. По истечении попыток нужно пересдать теорию [[C_Ex-t]]. ^_______^

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
