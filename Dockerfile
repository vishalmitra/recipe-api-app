FROM alpine:3.17
LABEL maintainer="hyderbadappdeveloper.com"


ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000



ENV PATH="/py/bin:$PATH"

USER django-user


