---
share: true
tags:
  - project
project-type: team
branch: "[[C++ (CPP)]]"
xp: 500
xp-with-bonus: 
group: CPP - 3
social-link: 
edu: https://edu.21-school.ru/project/26493
project-numeration: CPP9
deprecated: false
description: В этом проекте вам необходимо реализовать программу для простого мониторинга основных показателей системы в виде ядер и агентов. Агенты должны будут собирать метрики и передавать их ядру, которое будет записывать эти метрики в журнал. При достижении критических значений система должна отправлять уведомления пользователю.
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
