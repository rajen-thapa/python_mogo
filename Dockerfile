FROM python:3-alpine AS base
#WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM python:3-alpine
COPY --from=base /usr/local/lib/ /usr/local/lib/
WORKDIR /service
COPY app.py ./
EXPOSE 4030
ENTRYPOINT ["python3", "app.py"]
