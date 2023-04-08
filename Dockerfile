FROM alpine:3.17

LABEL maintainer="londonappdevloper.com"


ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

ENV PATH="C:\Users\visha\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Python 3.10:$PATH"

USER django-user