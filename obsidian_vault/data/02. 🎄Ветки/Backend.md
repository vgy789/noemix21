---
share: true
tags:
  - branch
---

> [!important] Чат
> У этой ветки [один общий чат в Telegram](https://t.me/+3arMZbxPqtgxNWZi)

___
> [!missing] 
> Эта страница ещё не готова к просмотру. Она смущена из-за своего неприглядного вида.

> [!note]- Все заметки по проектам
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	project AS "Проект",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[data/02. 🎄Ветки/Backend|Backend]] AND project
> SORT date DESC, project ASC
> ``` 

> [!note] Прочие заметки по Backend
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[data/02. 🎄Ветки/Backend|Backend]] AND !project
> SORT date DESC, file.link ASC
> ``` 

