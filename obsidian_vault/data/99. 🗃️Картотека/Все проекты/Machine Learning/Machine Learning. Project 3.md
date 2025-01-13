---
share: true
tags:
  - project
project-type: individual
branch: "[[Machine Learning]]"
xp: 600
xp-with-bonus: 
group: Machine learning
social-link: 
edu: https://edu.21-school.ru/project/62394
deprecated: false
description: Этот проект посвящён различным методам валидации; мы обсудим, как правильно измерять качество моделей и избегать утечек. Также мы рассмотрим несколько способов оптимизации гиперпараметров модели и различные методы отбора признаков.
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
