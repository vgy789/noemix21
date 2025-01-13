---
share: true
tags:
  - project
project-type: exam-module
branch: "[[CPP]]"
xp: 200
xp-with-bonus: 
group: CPP - 1
social-link: 
edu: https://edu.21-school.ru/course/2297/
project-numeration: 
deprecated: false
description: Here are your C++ (CPP) exams.
---

Это группа проектов. Предстоит сдать теорию [[data/99. 🗃️Картотека/Все проекты/CPP/CPP_Ex-t]] и практику [[data/99. 🗃️Картотека/Все проекты/CPP/CPP_Ex-p]].

> [!info] 
> У вас есть **2 попытки** чтобы сдать практический экзамен [[data/99. 🗃️Картотека/Все проекты/CPP/CPP_Ex-p]]. По истечении попыток нужно пересдать теорию [[data/99. 🗃️Картотека/Все проекты/CPP/CPP_Ex-t]].

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
