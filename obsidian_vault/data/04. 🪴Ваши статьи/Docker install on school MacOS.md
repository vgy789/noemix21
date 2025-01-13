---
share: true
date: 
tags:
  - article
  - nsk
project: "[[DO5_SimpleDocker]]"
s21-authors: []
branch: "[[DevOPS]]"
source: https://held-stingray-d76.notion.site/Docker-install-on-school-iMacs-f1efffc97288411fa27194970a07730e
---

## Docker install on school MacOS
### Этап первый. Managed Software Center

^67acd2

Для начала заходим в **Managed Software Center**

![[managed-software-center.webp]]

Видим там **Docker** нажимаем **INSTALL**

![[docker-engine-starting.webp]]

![[managed-software-docker.webp]]

Ждём пока установится, чилим.

### Этап второй. Линковка в goinfre

^9969ab

После установки очень **важно** не запускать приложение, иначе вы рискуете потерять все свободное место на диске, которое докер не постесняется скушать.

Что бы этого избежать предварительно выполняем следующие команды:

```bash
rm -rf ~/Library/Containers/com.docker.docker
mkdir -p ~/goinfre/Docker/Data
ln -s ~/goinfre/Docker ~/Library/Containers/com.docker.docker

```

Это удалит папку с контейнерами докера в домашней директории и линканет ее в goinfre. 3 команды.

### Этап третий. Docker Engine Starting

^ec4874

После чего запускаем докер в первый раз и видим следующую картину:

Ждём пока **Docker Engine** запуститься, чилим.

Инструкции по тому что делать, если вы наблюдаете данную картину продолжительное время (больше 5 минут) будут _ниже_.

### Этап четвертый. Getting started

После запуска в первый раз Docker предложит вам принять пользовательское соглашение, принимаем его. Далее вам предложат пройти туториал, нажимаем **Skip**.

И наконец видим вот такую картину:

![[docker-no-containers-running.webp]]

Если вы это видите, значит вы настоящий герой, у вас все получилось и можно начинать работу с докером!

К слову, не нужно вводить в терминал или еще куда либо данную команду которую вам предлагают ввести при старте:

```bash
docker run -d -p 80:80 docker/getting-started
```

Это не нужно для работы докера, это просто _getting started_ туториал.

### Что делать если вы не герой

Итаааак, если вы не герой и у вас все зависло на этапе [[Docker install on school MacOS#^ec4874|Docker Engine Starting]]

Для начала нам понадобится следующая утилита, ищем ее, запускаем

![[activity-monitor.webp]]
Открываем ее, в поиске пишем docker, выбираем **Docker** и **Docker Desktop** и нажимаем на крестик в верхней панели, после чего тыкаем на **Force Quit**

![[activity-monitor-docker-stop.webp]]
Теперь когда Docker и Docker Desktop выключены, возвращаемся ко второму [[Docker install on school MacOS#^9969ab|этапу с линовкой в goinfre]] и повторяем все действия из этого и последующих пунктов.

### Что делать если вы все таки запустили Docker сразу после установки и не выполнили линковку

Что ж, в таком случае вероятно у вас теперь 0 байт свободного места в домашней директории. Для начала выключаем Docker и Docker Desktop с помощью Activity Monitor. После чего переходим в **Managed Software Center**, видим там Docker и нажимаем **REMOVE**. Далее делаем логаут и логинимся обратно. И начинаем с [[Docker install on school MacOS#^67acd2|первого этапа]].
