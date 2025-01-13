---
share: true
dg-pinned: true
tags:
  - index
permalink: "/data/99. 🗃️Картотека/Все проекты/C++ (CPP)/index.html"
---

```dataview
TABLE WITHOUT ID
	file.link AS "Название проекта",
	branch AS "Ветка"
WHERE 
	contains(file.folder, this.file.folder) 
	AND !contains(tags, "index")
SORT file.name ASC
```
