---
share: true
date: 2025-01-17
tags:
  - note
project: "[[DO8 DevOps. Project 8]]"
s21-authors:
  - "[[lomashag]]"
branch: "[[DevOPS]]"
source: https://burnt-aunt-28e.notion.site/s21_Devops-05b03f080a6046ab90507df5b990f6b2
description: В этой заметке собраны полезные ссылки, советы и примеры касающиеся DevOps8.
title: DevOps8 заметки lomashag
---

## Литература и видео:

- [Всё что нужно знать по Ansible. Основы и не только. - YouTube](https://youtu.be/YYjCwLs-1hA?si=PWn27bIHJrJkBA7Z)
- [Практическое руководство по HashiCorp Consul — Часть 1 / Хабр](https://habr.com/ru/articles/531602/)
- [Практическое руководство по HashiCorp Consul — Часть 2 / Хабр](https://habr.com/ru/articles/536444/)

## Советы:
- Лучше читать официальную документацию о модулях Ansible, там все подробно расписано.
- Сделайте качественно 2 часть, тк многие делают sd(service discovery) через статику(это бред, теряется смысл sd, хотя этого не требуют в задании). То есть у вас есть 2 воркера и в файле consul_client пишут статичный ip…
Как бы я подходил к этому заданию(НЕ СОВЕТУЮ, расширения у файла будет j2, а не hcl, но в чек листе нет этого) использовать из ansible jinja2(шаблоны), и в адресе клиента, которого будут видеть другие клиенты и сервер consul, прописать использование модулей ansible:

```yaml
advertise_addr = "{{ ansible_all_ipv4_addresses | select('search', '192.168.56') | list | first }}" 
```

Возможно есть другие подходы, но я увидел только такой (поэтому пишите, если нашли лучше).
