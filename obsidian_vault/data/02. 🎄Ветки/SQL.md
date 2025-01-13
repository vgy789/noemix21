---
share: true
tags:
  - branch
title: Язык SQL
---

> [!important] Чат
>  У этой ветки [один общий чат в Telegram](https://t.me/+5xlNV70Bw1w5OTM6)
___
> [!note]- Все заметки по проектам SQL
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	project AS "Проект",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[SQL]] AND project
> SORT date DESC, project ASC
> ``` 

> [!note] Прочие заметки по SQL
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[SQL]] AND !project
> SORT date DESC, file.link ASC
> ```

## Проекты
```dataviewjs
const group = "SQL-1";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/SQL"').filter(page => 
    page.tags?.includes('project') && 
    !page.tags?.includes('index') && 
    page.group === group
);

if (projects.length === 0) {
    dv.paragraph(`### ${group}\nНет доступных проектов.`);
} else {
    const output = projects.map((note, index) => {
        const fileLink = note.file.link;
        const xp = note.xp ? `${note.xp}xp` : "";
        const xpBonus = note["xp-with-bonus"] ? `- ${note["xp-with-bonus"]}xp` : "";
		const socialLink = note["social-link"] ? ` · [Чат](${note["social-link"]})` : "";
        const description = note.description ? `\n— _${note.description}_` : "";

        // Определяем тип проекта из поля project-type
        let type = "Тип не указан";
        switch (note["project-type"]) {
            case "team":
                type = "Групповой";
                break;
            case "individual":
                type = "Индивидуальный";
                break;
            case "intensive":
                type = "Интенсив";
                break;
            case "exam":
                type = "Экзамен";
                break;
            case "exam-module":
				type = "Группа экзаменов";
			break;
        }
        return `${index + 1}. #### ${fileLink}\n**${type}** · **${xp} ${xpBonus}**  ${socialLink}${description}`.trim();
    }).join("\n");

    dv.paragraph(`### ${group}`);
    dv.paragraph(output);
}
```

```dataviewjs
const group = "SQL-2";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/SQL"').filter(page => 
    page.tags?.includes('project') && 
    !page.tags?.includes('index') && 
    page.group === group
);

if (projects.length === 0) {
    dv.paragraph(`### ${group}\nНет доступных проектов.`);
} else {
    const output = projects.map((note, index) => {
        const fileLink = note.file.link;
        const xp = note.xp ? `${note.xp}xp` : "";
        const xpBonus = note["xp-with-bonus"] ? `- ${note["xp-with-bonus"]}xp` : "";
		const socialLink = note["social-link"] ? ` · [Чат](${note["social-link"]})` : "";
        const description = note.description ? `\n— _${note.description}_` : "";

        // Определяем тип проекта из поля project-type
        let type = "Тип не указан";
        switch (note["project-type"]) {
            case "team":
                type = "Групповой";
                break;
            case "individual":
                type = "Индивидуальный";
                break;
            case "intensive":
                type = "Интенсив";
                break;
            case "exam":
                type = "Экзамен";
                break;
            case "exam-module":
				type = "Группа экзаменов";
			break;
        }
        return `${index + 1}. #### ${fileLink}\n**${type}** · **${xp} ${xpBonus}**  ${socialLink}${description}`.trim();
    }).join("\n");

    dv.paragraph(`### ${group}`);
    dv.paragraph(output);
}
```

```dataviewjs
const group = "DataBases - 1";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/SQL"').filter(page => 
    page.tags?.includes('project') && 
    !page.tags?.includes('index') && 
    page.group === group
);

if (projects.length === 0) {
    dv.paragraph(`### ${group}\nНет доступных проектов.`);
} else {
    const output = projects.map((note, index) => {
        const fileLink = note.file.link;
        const xp = note.xp ? `${note.xp}xp` : "";
        const xpBonus = note["xp-with-bonus"] ? `- ${note["xp-with-bonus"]}xp` : "";
		const socialLink = note["social-link"] ? ` · [Чат](${note["social-link"]})` : "";
        const description = note.description ? `\n— _${note.description}_` : "";

        // Определяем тип проекта из поля project-type
        let type = "Тип не указан";
        switch (note["project-type"]) {
            case "team":
                type = "Групповой";
                break;
            case "individual":
                type = "Индивидуальный";
                break;
            case "intensive":
                type = "Интенсив";
                break;
            case "exam":
                type = "Экзамен";
                break;
            case "exam-module":
				type = "Группа экзаменов";
			break;
        }
        return `${index + 1}. #### ${fileLink}\n**${type}** · **${xp} ${xpBonus}**  ${socialLink}${description}`.trim();
    }).join("\n");

    dv.paragraph(`### ${group}`);
    dv.paragraph(output);
}
```

```dataviewjs
// проекты без тега group считаются устаревшими
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/SQL"').filter(page => 
    page.tags?.includes('project') && 
    !page.tags?.includes('index') && 
    page.deprecated === true
);

if (projects.length > 0) {
    const output = projects.map((note, index) => {
        const fileLink = note.file.link; // Ссылка на файл
        const xp = note.xp ? `${note.xp}xp` : ""; // Опыт
        const xpBonus = note["xp-with-bonus"] ? `(${note["xp-with-bonus"]})` : "";
        const socialLink = note["social-link"] ? ` · [Чат](${note["social-link"]})` : "";
        const description = note.description ? `\n— _${note.description}_` : "";

        // Определяем тип проекта
        let type = "Тип не указан";
        switch (note["project-type"]) {
            case "team":
                type = "Групповой";
                break;
            case "individual":
                type = "Индивидуальный";
                break;
            case "intensive":
                type = "Интенсив";
                break;
            case "exam":
                type = "Экзамен";
                break;
            case "exam-module":
                type = "Группа экзаменов";
                break;
        }

        return `${index + 1}. #### ${fileLink}\n**${type}** · **${xp} ${xpBonus}**  ${socialLink}${description}`.trim();
    }).join("\n");

    // Заголовок и информационный блок
    const heading = "### Устаревшие проекты";
    const info = `> [!info]\n> Устаревшие проекты больше не доступны для выполнения.`;

    // Вывод результатов
    dv.paragraph(heading);
    dv.paragraph(output);
    dv.paragraph(info);
}
```

## Визуализация
### Xp проектов
[[SQL 2025-01-11 21.37.32.excalidraw]]
![[SQL 2025-01-11 21.37.32.excalidraw.svg]]

### Блок-схема ветки
[[SQL 2025-01-11 21.37.57.excalidraw]]
![[SQL 2025-01-11 21.37.57.excalidraw.svg]]

%%
```mermaid
sankey-beta
    SQL-1, SQL, 1700
    SQL1, SQL-1, 1500
    SQL_Ex, SQL-1, 200

    SQL-2, SQL, 600
    SQL2 Info21_v1.0, SQL-2, 300
    SQL3 RetailAnalytics_v1.0, SQL-2, 300
```
%%

%%
```mermaid
flowchart TD
    subgraph SQL1
        direction TB
        SQL1_Bootcamp_Day00 --> SQL1_Bootcamp_Day01
        SQL1_Bootcamp_Day01 --> SQL1_Bootcamp_Day02
        SQL1_Bootcamp_Day02 --> SQL1_Bootcamp_Day03
        SQL1_Bootcamp_Day03 --> SQL1_Bootcamp_Day04
        SQL1_Bootcamp_Day04 --> SQL1_Bootcamp_Team00
        SQL1_Bootcamp_Team00 --> SQL1_Bootcamp_Day05
        SQL1_Bootcamp_Day05 --> SQL1_Bootcamp_Day06
        SQL1_Bootcamp_Day06 --> SQL1_Bootcamp_Day07
        SQL1_Bootcamp_Day07 --> SQL1_Bootcamp_Day08
        SQL1_Bootcamp_Day08 --> SQL1_Bootcamp_Day09
        SQL1_Bootcamp_Day09 --> SQL1_Bootcamp_Team01
    end
	SQL1 --> SQL_Ex
    subgraph SQL-2
        direction TB
        SQL2_Info21_v1.0 --> SQL3_RetailAnalytics_v1.0
    end

```
%%
