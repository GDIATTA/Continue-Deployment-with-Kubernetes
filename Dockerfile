FROM python:3.11
WORKDIR /app
COPY ./app /app
RUN pip install -r requirements.txt
EXPOSE 8080
CMD gunicorn --workers=5 --bind 0.0.0.0:8080 app:app