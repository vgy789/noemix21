---
share: true
tags:
  - branch
---

> [!important] Чат
>  У этой ветки [один общий чат в Telegram](https://t.me/+MPogbcEDJ-JhZWE6)

___
> [!note]- Заметки по всем DevOPS проектам
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	project AS "Проект",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[DevOPS]] AND project
> SORT date DESC, project ASC
> ``` 

> [!note] Прочие заметки по DevOPS
> ```dataview
> TABLE WITHOUT ID
> 	file.link AS "Название",
> 	date AS "Опубликовано"
> FROM "data/03. 🌱Ваши заметки" OR "data/04. 🪴Ваши статьи"
> WHERE branch = [[DevOPS]] AND !project
> SORT date DESC, file.link ASC
> ```

## Ветка DevOPS
```dataviewjs
const group = "DO-1";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/DevOPS"').filter(page => 
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
const group = "DO-2";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/DevOPS"')
    .filter(page => 
        page.tags?.includes('project') && 
        !page.tags?.includes('index') && 
        page.group === group
    )
    .sort(note => note.file.name, 'asc'); // Сортировка по имени файла в порядке возрастания

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
const group = "DO-3";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/DevOPS"')
    .filter(page => 
        page.tags?.includes('project') && 
        !page.tags?.includes('index') && 
        page.group === group
    )
    .sort(note => note.file.name, 'asc'); // Сортировка по имени файла в порядке возрастания

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
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/DevOPS"').filter(page => 
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

### Визуализация
#### Xp проектов
[[DevOPS 2025-01-11 21.36.43.excalidraw]]
![[DevOPS 2025-01-11 21.36.43.excalidraw.svg]]

#### Блок-схема ветки
[[DevOPS 2025-01-11 21.37.02.excalidraw]]
![[DevOPS 2025-01-11 21.37.02.excalidraw.svg]]

%%
```mermaid
sankey-beta

DO-1, DevOPS, 1150
DO1_Linux, DO-1, 200
DO2_Linux Network, DO-1, 350
DO5_SimpleDocker, DO-1, 200
DO6_CICD, DO-1, 200
DO_Ex-t, DO-1, 200

DO-2, DevOPS, 700
DO3_LinuxMonitoring v1.0, DO-2, 350
DO4_LinuxMonitoring v2.0, DO-2, 350

DO-3, DevOPS, 5200
DO7 DevOps. Project 7, DO-3, 600
DO8 DevOps. Project 8, DO-3, 600
DO9 DevOps. Project 9, DO-3, 600
DO10 DevOps. Project 10, DO-3, 600
DO11 DevOps. Project 11, DO-3, 600
DO12 DevOps. Project 12, DO-3, 600
DO13 DevOps. Project 13, DO-3, 800
DO14 DevOps. Project 14, DO-3, 800
```
%%
%%
```mermaid
flowchart TD
    subgraph DevOPS
        direction TB
        subgraph DO-1
            direction TB
            C6_s21_matrix --> DO1_Linux
            DO1_Linux --> DO2_Linux_Network
            DO2_Linux_Network --> DO5_SimpleDocker
            DO5_SimpleDocker --> DO6_CICD
            DO6_CICD --> DO_Ex-t
        end

        subgraph DO-2
            direction TB
            DO3_LinuxMonitoring_v1.0 --> DO4_LinuxMonitoring_v2.0
        end

        subgraph DO-3
            direction TB
            DO7_DevOps_Project_7 --> DO7_DevOps_Project_8
            DO7_DevOps_Project_8 --> DO7_DevOps_Project_9
            DO7_DevOps_Project_9 --> DO7_DevOps_Project_10
            DO7_DevOps_Project_10 --> DO7_DevOps_Project_11
            DO7_DevOps_Project_11 --> DO7_DevOps_Project_12
            DO7_DevOps_Project_12 --> DO7_DevOps_Project_13
            DO7_DevOps_Project_13 --> DO7_DevOps_Project_14
        end

    end
```
%%