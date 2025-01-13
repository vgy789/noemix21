---
share: true
tags:
  - project
project-type: exam
branch: "[[C]]"
xp: 
xp-with-bonus: 
social-link: 
edu: https://edu.21-school.ru/exam/68824
project-numeration: 
deprecated: false
description: Это ваш экзамен С. Не забудьте выложить своё решение в ветку develop.
---

> [!info] 
> У вас есть **2 попытки** чтобы сдать практический экзамен [[C_Ex-p]]. По истечении попыток нужно пересдать теорию [[C_Ex-t]].


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
