-- Удаляем базу данных, если она существует
DROP DATABASE IF EXISTS restapi;

-- Создаем базу данных заново
CREATE DATABASE restapi;

-- Подключаемся к созданной базе
\c restapi;

-- Создаем таблицу пользователей
CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       username VARCHAR NOT NULL,
                       password VARCHAR NOT NULL,
                       lastlogin INT,
                       admin INT,
                       active INT
);

-- Добавляем тестового пользователя admin
INSERT INTO users (username, password, lastlogin, admin, active) VALUES
    ('admin', 'admin', 1620922454, 1, 1);