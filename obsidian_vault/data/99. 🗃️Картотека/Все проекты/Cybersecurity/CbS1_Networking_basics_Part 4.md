---
share: true
tags:
  - project
project-type: individual
branch: "[[Cybersecurity]]"
xp: 600
xp-with-bonus: 
group: CbS1
social-link: 
edu: https://edu.21-school.ru/project/71031
deprecated: false
description: В этом проекте вам предстоит исследовать содержимое пакетов в дампах WireShark и tcpdump, обратный shell, а также автоматизировать и генерировать произвольные пакеты в scapy.
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
