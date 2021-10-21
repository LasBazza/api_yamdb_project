# api_yamdb
REST API для сервиса YaMDb — базы отзывов о фильмах, книгах и музыке. (Коллективный проект 3 студентов Яндекс.Практикум)


## Описание

API для сервиса YaMDb.

Позволяет работать со следующими сущностями:

* Отзывы 

* Коментарии к отзывам

* Пользователи 

* Категории (типы) произведений

* Категории жанров

* Произведения (на которые пишут отзывы)

## Об авторе проекта
Меня зовут Дмитрий Игнатьев, я - начинающий backend-разработчик.

## Запуск проекта

Для запуска проекта необходимо выполнить следующие действия:

1. Склонировать резпозиторий

2. Из папки с проектом выполнить команду:

```
docker-compose up
```

3. В новом окне терминала из папки с проектом последовательно создать и применить миграции:

```
docker-compose exec web python manage.py makemigrations
docker-compose exec web python manage.py migrate
```

4. Заполнить базу начальными данными. Для этого в той же папке выполнить:

```
docker-compose exec web python manage.py shell
```

В открывшемся терминале ввести команды:

```
>>> from django.contrib.contenttypes.models import ContentType
>>> ContentType.objects.all().delete()
>>> quit()
```

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