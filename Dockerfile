FROM python:3-alpine AS base
WORKDIR /service
COPY . ./
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 4030

FROM python:3-alpine
WORKDIR /service
COPY --from=base /service/ ./
ENTRYPOINT ["python3", "app.py"]
