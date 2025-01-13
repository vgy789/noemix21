---
share: true
tags:
  - project
project-type: team
branch: "[[Machine Learning]]"
xp: 
xp-with-bonus: 
group: 
social-link: 
edu: https://edu.21-school.ru/project/51501
deprecated: false
description: Этот командный проект поможет вам укрепить навыки, приобретённые в предыдущие дни.
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
