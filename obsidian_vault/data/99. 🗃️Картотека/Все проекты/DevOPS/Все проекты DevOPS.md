---
share: true
dg-pinned: true
tags:
  - index
---

```dataview
TABLE WITHOUT ID
	file.link AS "Название проекта",
	branch AS "Ветка"
WHERE 
	file.folder = this.file.folder 
	AND !contains(tags, "index")
SORT file.name ASC
```
