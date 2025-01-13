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
edu: https://edu.21-school.ru/project/71028
deprecated: false
description: Данный проект включает в себя анализ основ сетей, модели OSI/TCP/IP на примере работы в среде GNS3, а также изучение протоколов ip, ARP, ICMP.
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
