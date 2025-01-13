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
edu: https://edu.21-school.ru/project/62398
deprecated: false
description: Этот проект посвящён различным алгоритмам кластеризации; мы обсудим, как реализовать и использовать модели кластеризации. Мы также попытаемся объединить кластеризацию и контролируемое обучение, добавив метки кластеров в качестве новых признаков, и измерить качество модели.
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
