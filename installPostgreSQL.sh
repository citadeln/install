#!/bin/bash

#Создать конфигурацию файлового репозитория:
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

#Импортировать ключи подписи репозитория:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

#Обновить список пакетов:
sudo apt-get update

#Установить PostgreSQL:
sudo apt install postgresql postgresql-contrib -y

#Проверка подключения PostgreSQL:
#sudo systemctl status postgresql

#Если служба не запущена, нужно использовать команду для запуска:
#sudo systemctl start postgresql

#Для создания пользователя сначала нужно войти в интерактивную оболочку PostgreSQL, выполнив команду:
sudo -u postgres psql

#Далее создать пользователя:
CREATE USER monroe WITH PASSWORD '123';

#Чтобы создать базу данных, нужно выполнить команду:
CREATE DATABASE test;

#Чтобы предоставить созданному пользователю права на управление созданной базой данных, нужно выполнить команду:
GRANT ALL PRIVILEGES ON DATABASE test TO monroe;

#После завершения настройки можно выйти из интерактивной оболочки с помощью команды:
\q

#Чтобы входить в интерактивную оболочку PostgreSQL от имени созданного пользователя, нужно вводить следующую команду:
#psql -U monroe -d test -h 127.0.0.1 -p 5432
