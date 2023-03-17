FROM python:3.7-slim
WORKDIR /app
COPY /requirements.txt .
RUN pip install -r ./requirements.txt
COPY . .
CMD python ./infra_project/manage.py runserver 8000
