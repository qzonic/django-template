# Стек
<img src="https://img.shields.io/badge/Python 3.11-4169E1?style=for-the-badge"/> <img src="https://img.shields.io/badge/Django 4.2-008000?style=for-the-badge"/> <img src="https://img.shields.io/badge/DRF 3.15.1-800000?style=for-the-badge"/> <img src="https://img.shields.io/badge/Docker-00BFFF?style=for-the-badge"/> <img src="https://img.shields.io/badge/PostgreSQL-87CEEB?style=for-the-badge"/> <img src="https://img.shields.io/badge/Gunicorn-06bd1e?style=for-the-badge"/>

# Описание

Перед стартом проекта необходимо изменить его название в следующих директориях/файлах:

1. Корневую директорию проекта;
2. В файле `manage.py` изменить `os.environ.setdefault('DJANGO_SETTINGS_MODULE', '<new_project_name>.settings.dev')`;
3. Директорию с настройками и содержимое следующих файлов:
   * В файле `wsgi.py` изменить `os.environ.setdefault('DJANGO_SETTINGS_MODULE', '<new_project_name>.settings.dev')`;
   * В файле `asgi.py` изменить `os.environ.setdefault('DJANGO_SETTINGS_MODULE', '<new_project_name>.settings.dev')`;
   * В директории `settings` изменить содерижимое следующих файлов:
     * В файле `base.py` изменить `ROOT_URLCONF = '<new_project_name>.urls'` и `WSGI_APPLICATION = '<new_project_name>.wsgi.application'`;
4. В файле Dockerfile изменить `CMD ["gunicorn", "<new_project_name>.wsgi:application", "--bind", "0:8000"]`.

# Переменные окружения

Файл .env должен содержать:

1. SECRET_KEY
2. POSTGRES_DB
3. POSTGRES_USER
4. POSTGRES_PASSWORD
5. POSTGRES_HOST
6. POSTGRES_PORT
