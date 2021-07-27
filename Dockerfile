FROM python:3 AS base
WORKDIR /service
COPY app.py ./
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM python:3-alpine
COPY --from=base /usr/local/lib/ /usr/local/lib/
COPY --from=base /service/ /service/
EXPOSE 4030
ENTRYPOINT ["python3", "/service/app.py"]
