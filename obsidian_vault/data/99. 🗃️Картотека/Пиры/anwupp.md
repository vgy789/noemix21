---
share: true
tags:
  - peer
---

> [!summary] Причастен к
> ```dataview
> LIST
> FROM "data"
> WHERE 
>	contains(s21-leader, this.file.link) OR 
>	contains(s21-authors, this.file.link)
> SORT file.name ASC
> ```

> [!quote]- Упоминается в
> ```dataview
> LIST
> FROM [[]]
> WHERE 
>	!contains(s21-leader, this.file.link) AND
>	!contains(s21-authors, this.file.link)
> SORT file.name ASC
> ```
