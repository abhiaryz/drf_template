FROM python:3.11-slim-bullseye
ENV PYTHONUNBUFFERED 1
COPY mmr /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r /app/requirement.txt
EXPOSE 8080

CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000
