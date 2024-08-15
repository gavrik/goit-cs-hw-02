FROM python:3.12-alpine
ENV APP_HOME=/app
WORKDIR $APP_HOME
COPY . .

RUN apk add postgresql-libs
RUN apk add gcc musl-dev postgresql-dev
RUN pip install -r requirements.txt
RUN rm -rf /root/.cache

EXPOSE 8000
ENTRYPOINT [ "python", "main.py" ]

