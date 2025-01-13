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
edu: https://edu.21-school.ru/project/71029
deprecated: false
description: Данный проект включает в себя продолжение анализа основ сетей, модели OSI/ TCP/IP на примере работы в среде GNS3. Изучаются статическая маршрутизация, TCP/UDP, DNS, NTP, Telnet, SSH, DHCP, NAT.
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
