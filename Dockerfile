FROM python:3-alpine AS base
WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 4030
ENTRYPOINT ["python3", "app.py"]
