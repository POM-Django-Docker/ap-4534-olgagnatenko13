FROM python:3.12-slim

RUN apt update 

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

WORKDIR /app/library
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
