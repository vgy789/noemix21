---
share: true
tags:
  - branch
---

> [!missing] 
> Эта страница ещё не готова к просмотру. Закрой. Нука живо!!!

___
> [!important] Чат
>  У этой ветки [один общий чат в Telegram](

> [!note]- Все заметки по проектам branchname
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	project AS "Проект",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[]] AND project
> SORT date DESC, project ASC
> ``` 

> [!note] Прочие заметки по branchname
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[]] AND !project
> SORT date DESC, file.link ASC
> ``` 
