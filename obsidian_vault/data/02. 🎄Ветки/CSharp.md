---
share: true
tags:
  - branch
title: Язык C#
---

> [!important] Чат
> У этой ветки [один общий чат в Telegram](https://t.me/+0QNpBkJDKQNhZjAy)

___
> [!missing] 
> Эта страница ещё не готова к просмотру. Она смущена из-за своего неприглядного вида.

> [!note] Прочие заметки по C++
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[C♯]] AND !project
> SORT date DESC, file.link ASC
> ``` 

## Проекты
```dataviewjs
const group = "CPP-1";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/C♯"').filter(page => 
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
        const xpBonus = note["xp-with-bonus"] ? `– ${note["xp-with-bonus"]}xp` : "";
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
const group = "Algorithms-1";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/C♯"').filter(page => 
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
        const xpBonus = note["xp-with-bonus"] ? `– ${note["xp-with-bonus"]}xp` : "";
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
const group = "Algorithms-2";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/C♯"').filter(page => 
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
        const xpBonus = note["xp-with-bonus"] ? `– ${note["xp-with-bonus"]}xp` : "";
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
const group = "CPP-3";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/C♯"').filter(page => 
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
        const xpBonus = note["xp-with-bonus"] ? `– ${note["xp-with-bonus"]}xp` : "";
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
// проекты deprecated считаются устаревшими
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/C♯"').filter(page => 
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
```mermaid
sankey-beta
CPP1 s21_matrix+, CPP-1, 350
CPP2 s21_containers, CPP-1, 800
CPP3 BrickGame_v2.0, CPP-1, 800
CPP4 3DViewer_v2.0+, CPP-1, 800
CPP_Ex, CPP-1, 200
CPP-1, CPP, 2950

CPP5 3DViewer_v2.1, CPP-3, 600
CPP6 3DViewer_v2.2, CPP-3, 600
CPP7 MLP, CPP-3, 600
CPP8 PhotoLab_v1.0, CPP-3, 350
CPP9 MonitoringSystem, CPP-3, 500
CPP-3, CPP, 2650
```

### Блок-схема ветки
```mermaid
flowchart TD
    subgraph CPP-1
        direction TB
        CPP1_s21_matrix+ --> CPP2_s21_containers
        CPP2_s21_containers --> CPP3_BrickGame_v2.0
        CPP3_BrickGame_v2.0 --> CPP4_3DViewer_v2.0+
        CPP4_3DViewer_v2.0+ --> CPP_Ex
    end

    subgraph CPP-2
        direction TB
        CPP5_3DViewer_v2.1 --> CPP6_3DViewer_v2.2
        CPP6_3DViewer_v2.2 --> CPP7_MLP
        CPP7_MLP --> CPP8_PhotoLab_v1.0
        CPP8_PhotoLab_v1.0 --> CPP9_MonitoringSystem
    end

```
