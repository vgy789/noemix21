---
share: true
tags:
  - branch
---

## Заметки по Pool
Тут ничего нет. Поспрашивай у пиров :0

> [!caution] 
> Порядок проектов в отображении нарушен. Наверное надо что-то с этим сделать. 

```dataviewjs
const group = "Week 1";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/Pool"')
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
const group = "Week 2";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/Pool"')
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
const group = "Week 3";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/Pool"')
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
const group = "Week 4";
const projects = dv.pages('"data/99. 🗃️Картотека/Все проекты/Pool"')
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
