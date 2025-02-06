---
share: true
date: 2025-01-17
tags:
  - note
project: "[[DO9 DevOps. Project 9]]"
s21-authors:
  - "[[lomashag]]"
branch: "[[DevOPS]]"
source: https://burnt-aunt-28e.notion.site/s21_Devops-05b03f080a6046ab90507df5b990f6b2
description: В этой заметке собраны полезные ссылки, советы и примеры касающиеся DevOps9.
title: DevOps9 заметки lomashag
---

## Литература и видео:

- [Prometheus (плейлист) - YouTube](https://youtube.com/playlist?list=PLg5SS_4L6LYu6qjwwwjt2WRsEudkzqB7J&si=33yi_z1yfagf_E3I)
- [Grafana – установка, как настроить алерты, как интегрировать Prometheus и ClickHouse – VyacheArt - YouTube](https://youtu.be/1RpbstvgnVE)
- [Развертываем Prometheus через docker-compose вместе с Grafana и Alertmanager](https://www.dmosk.ru/miniinstruktions.php?mini=prometheus-stack-docker)
- [Разворачиваем Grafana Loki для мониторинга систем](https://wiki.merionet.ru/articles/razvorachivaem-grafana-loki-dlya-monitoringa-sistem)
- [Grafana Stack: Введение в Loki и Promtail, а также их установка на OpenSUSE (Часть 1) – Telegraph](https://telegra.ph/Grafana-Stack-Vvedenie-v-Loki-i-Promtail-a-takzhe-ih-ustanovka-na-OpenSUSE-CHast-1-02-12)
- [Тонкости настройки Grafana Loki / Хабр](https://habr.com/ru/companies/kts/articles/723980/)
- [Мониторинг HTTP и SSL через Prometheus blackbox\_exporter / Хабр](https://habr.com/ru/companies/hostkey/articles/729898/)
- [Запросы в Prometheus к метрикам системы мониторинга](https://www.dmosk.ru/miniinstruktions.php?mini=prometheus-request)

## Советы:
- Есть несколько способов сделать агентов журналирования:
	1. Promtail (лучше этот, тк многие компании делают на нем)
	2. docker plugin(официальный от Loki)([https://grafana.com/docs/loki/latest/send-data/docker-driver/](https://grafana.com/docs/loki/latest/send-data/docker-driver/))
	Есть ещё разные агенты, но эти основные для этого задания
- Использовать сайт [dmosk.ru](http://dmosk.ru/). Много материалов по настройки grafana, prometheus, alertmanager