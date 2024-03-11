FROM python:3.10-slim

ARG APP_SOURCE=/app

COPY requirements.txt ${APP_SOURCE}/requirements.txt

RUN pip3 install --no-cache-dir -r ${APP_SOURCE}/requirements.txt

COPY src/ ${APP_SOURCE}/
WORKDIR ${APP_SOURCE}

CMD ["python", "main.py"]
