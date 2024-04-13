FROM python:3.11-alpine

RUN apk add --no-cache postgresql-dev postgresql-client

ENV PYTHONUNBUFFERED 1

WORKDIR /app/

COPY ./base.txt /app/

RUN pip3 install --upgrade pip
RUN pip install --no-cache-dir -r ./base.txt

COPY ./ /app/

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]

CMD ["gunicorn", "project.wsgi:application", "--bind", "0:8000"]
