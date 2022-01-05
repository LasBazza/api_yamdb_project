# API YaMDb
REST API для сервиса YaMDb — базы данных произведений исскуства (книги, фильмы, музыка) с возможностью писать отзывы и комментарии к отзывам. (Коллективный проект 3 студентов Яндекс.Практикум)


## Описание

API для сервиса YaMDb.

Позволяет работать со следующими сущностями:

* Пользователи 
* Произведения
* Категории (типы) произведений
* Жанры
* Отзывы 
* Коментарии к отзывам

## Запуск проекта

Для запуска проекта необходимо выполнить следующие действия:

1. Склонировать резпозиторий
```
git clone https://github.com/LasBazza/api_yamdb_project.git
```

3. Из папки с проектом выполнить команду:

```
docker-compose up
```


4. Заполнить базу начальными данными. Для этого в той же папке выполнить:


После этого загрузить данные в базу:

```
docker-compose exec web python manage.py loaddata fixtures.json
```

4. Создать суперпользователя:

```
docker-compose exec web python manage.py createsuperuser
```

5. В корневой папке проекта должен быть создан файл ```.env```, содержащий следующие переменные окружения:

```
SECRET_KEY=your_django_secret_key
DB_ENGINE=django.db.backends.postgresql
DB_NAME=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=your_password
DB_HOST=db
DB_PORT=5432
```

## Статус workflow
![yamdb workflow](https://github.com/LasBazza/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)

**_Проект доступен по [ссылке](http://178.154.230.3/)_**
