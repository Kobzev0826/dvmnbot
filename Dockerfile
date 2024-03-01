FROM python:3.10-slim

ARG APP_ROOT /app

RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends curl &&\
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*


COPY --chown=app requirements.txt ${APP_SOURCE}/requirements.txt

RUN pip3 install -r requirements.txt

COPY . ./${APP_ROOT}
WORKDIR ${APP_ROOT}

CMD ["python", "main.py"]