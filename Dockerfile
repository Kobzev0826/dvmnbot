FROM python:3.10-slim

ARG APP_ROOT=/app

RUN --mount=type=bind,source=./requirements.txt,target=${APP_SOURCE}/requirements.txt pip3 install -r requirements.txt

COPY . ./${APP_ROOT}
WORKDIR ${APP_ROOT}

CMD ["python", "main.py"]