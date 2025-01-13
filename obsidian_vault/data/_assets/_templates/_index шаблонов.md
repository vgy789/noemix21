---
share: false
tags:
  - index
dg-hide-in-graph: true
---

```dataview
TABLE WITHOUT ID
	file.link AS "Название",
	cluster AS "Ветка"
WHERE 
	contains(file.folder, this.file.folder) 
	AND !contains(tags, "index")
SORT file.name ASC
```
