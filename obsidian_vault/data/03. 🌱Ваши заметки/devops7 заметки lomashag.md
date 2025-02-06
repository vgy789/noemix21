---
share: true
date: 2025-01-17
tags:
  - note
project: "[[DO7 DevOps. Project 7]]"
s21-authors:
  - "[[lomashag]]"
branch: "[[DevOPS]]"
source: https://burnt-aunt-28e.notion.site/s21_Devops-05b03f080a6046ab90507df5b990f6b2
description: В этой заметке собраны полезные ссылки, советы и примеры касающиеся DevOps7.
title: DevOps7 заметки lomashag
---

## Литература и видео:

- [Introduction to Docker Compose \| Baeldung on Ops](https://www.baeldung.com/ops/docker-compose)
- [Docker Swarm для самых маленьких / Хабр](https://habr.com/ru/articles/659813/)
- [Что такое Vagrant: установка, запуск, использование](https://ru.hexlet.io/blog/posts/vagrant)
- [Docker Networking – Basics, Network Types & Examples - DEV Community](https://dev.to/tusharops_29/docker-networking-basics-network-types-examples-5ed7)

## Советы:

- Vagrant лучше устанавливать либо на windows, либо на линукс(нативный). На wsl головная боль. На процессорах amd могут быть конфликты с amd v(я лично отключил его, в таком случае не будет работать docker)
- На Vagrant можно использовать скрипт для установки компонентов. Самый удобный `node.vm.provision "shell", path: "setup.sh", args: "node01"` (СКРИПТ НУЖНО ПИСАТЬ САМОМУ, аргументы необязательно). 
Пример скрипта:
```shell
#!/bin/bash

apt-get update
apt-get install -y docker.io docker-compose-v2 ssh firewalld
systemctl start docker
systemctl enable docker

bash /vagrant/open_ports.sh

sudo docker swarm init --advertise-addr 192.168.56.10 | grep "docker swarm join --token" > /vagrant/worker_token.sh
if [ $? -ne 0 ]; then
    echo -e "\033[31mDocker swarm initialization failed!\033[0m"
fi
chmod +x /vagrant/worker_token.sh


docker network create --driver overlay --attachable overlay

docker compose --file /vagrant/docker-compose.yml up -d
docker stack deploy -c /vagrant/docker-compose.yml stage

docker compose --file /vagrant/docker-portainer.yml up -d
docker stack deploy -c /vagrant/docker-portainer.yml portainer
```
​
- Образы виртуалок можно брать с официального сайта. Мой выбор пал на `ubuntu/focal64` и `generic/alpine318`.
- Сравнение образов:

|         | `generic/alpine318`                                                                                                            | `ubuntu/focal64`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ------- | ------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Сборка  | 45 секунд                                                                                                                      | 2,5 минуты                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Утилиты | Пустой линукс, каждый инструмент нужно отдельно устанавливать. Отсутствуют даже сетевые утилиты, утилиты для работы с группами | Все есть из коробки. Docker нет!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| SSH     | Проблемы с работой по ssh нет                                                                                                  | Если попробовать **ssh-copy-id**, то будет permission denied. Для решение это проблемы надо зайти на машинку, к которой мы будем подключаться, `vagrant ssh <название машинки>` и в `/etc/ssh/sshd_config` закомментировать или поменять на yes строку `ChallengeResponseAuthentication no`. Если хотите автоматизировать, то в конце установочного скрипта добавим: `echo "ChallengeResponseAuthentication yes" \| cat - /etc/ssh/sshd_config \| tee /etc/ssh/sshd_config > /dev/null` и `(sleep 5; sudo systemctl restart sshd) &\|\|` |
- Vagrantfile нужно инициализировать с помощью `vagrant init`
- Простой **Vagrantfile**:
```yaml title="Vagrantfile"
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	
	# Задаем всем машинкам ос и количество памяти.
	# Эти настройки применяются всем, но можно прописывать в каждой машинке
	# свои параметры. Не забываем менять config на название нашей машинки(|manager|)
  config.vm.box = "ubuntu/focal64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end

  config.vm.define "manager", primary: true do |manager|
	  # Даем хосту название, а то будет vagrant и тяжело будет отличать машинки
    manager.vm.hostname = "manager"
		
		# Прокидываем порты на локальный хост с машинки vagrant
		manager.vm.network "forwarded_port", guest: 8081, host: 8081
		
		#Выдаем приватный ip для машинки
    manager.vm.network "private_network", ip: "192.168.56.10"
    
    # Установочный скрип(пишем сами)
    manager.vm.provision "shell", path: "setup.sh", args: "manager"

    # Перекидываем файлы с локального хоста на машинку
    manager.vm.provision "file", source:  "ansible01/ansible.cfg", destination: "/home/vagrant/ansible.cfg"
    manager.vm.provision "file", source:  "ansible01/ansible", destination: "/home/vagrant/ansible"
  end
end
```
- У alpine есть проблема с запуском docker, для решения это проблемы используйте скрипт:
```shell
apk update
apk add docker docker-cli-compose openrc
rc-update add docker boot
service docker start
sleep 5
addgroup vagrant docker
```
- Изучите сети в docker swarm. Для чего нужны overlay и другие. И чем отличается local от overlay сети.
Если использовать docker compose для поднятия сервисов, то разворачивается локально и создаёт сеть local. Если использовать docker stack deploy, то создаётся сеть overlay(для docker swarm).