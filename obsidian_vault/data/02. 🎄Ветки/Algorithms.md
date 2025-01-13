---
share: true
tags:
  - branch
---

> [!important] Чат
>  У этой ветки [один общий чат в Telegram](https://t.me/+VwkjRKFx57YyY2I6)

 ---

> [!note]- Все заметки по проектам Algorithms
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	project AS "Проект",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[Algorithms]] AND project
> SORT date DESC, project ASC
> ``` 

> [!note] Прочие заметки по Algorithms
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[Algorithms]] AND !project
> SORT date DESC, file.link ASC
> ``` 

> [!attention] 
> Проекты по алгоритмам ищите в [[Все ветки и проекты|языковых ветках]].
