---
share: false
s21-authors:
  - "[[jonnabin]]"
---

[[data/_assets/_templates/Индекс клубов|Индекс клубов]]

## Пример:
При пустом поле s21-leader вывести `¯\_(ツ)_/¯`, иначе вывести список из s21-leader.

## Проблема
Если сделать как в примере, то данные будут выводиться некорректно: создаются дубликаты данных когда несколько лидеров.
```
TABLE
    choice(link, "[Ссылка 🔗](" + link + ")", "—") AS "Telegram чат",
    → choice(s21-leader, s21-leader, "`¯\_(ツ)_/¯`") AS "Лидер"
WHERE 
	contains(file.folder, this.file.folder) 
	AND file.name != "_index клубов"
SORT file.name
```
Так происходит из-за внутренних особенностей обработки данных в choice. 

## Решение
Проверять есть ли данные в списке через length. choice(link) не нужно переделывать потому что это не список.
```
TABLE
    choice(link, "[Ссылка 🔗](" + link + ")", "—") AS "Telegram чат",
    → choice(length(s21-leader) > 0, s21-leader, "`¯\_(ツ)_/¯`") AS "Лидер"
WHERE 
	contains(file.folder, this.file.folder) 
	AND file.name != "_index клубов"
SORT file.name
```
