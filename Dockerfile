FROM python:3.10-slim

ARG APP_SOURCE=/app

RUN --mount=type=bind,source=requirements.txt,target=${APP_SOURCE}/requirements.txt pip3 install -r ${APP_SOURCE}/requirements.txt

COPY src/ ${APP_SOURCE}/
WORKDIR ${APP_SOURCE}

CMD ["python", "main.py"]
