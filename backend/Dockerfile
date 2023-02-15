FROM python:3.8

COPY ./backend/requirements.txt /tmp/requirements.txt

RUN python -m venv /env \
&& /env/bin/pip install --upgrade pip \
&& /env/bin/pip install --no-cache-dir -r /tmp/requirements.txt

ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH
ENV DJANGO_SETTINGS_MODULE=project.settings

WORKDIR /app

COPY ./backend/setup.py /app/
COPY backend /app/backend

RUN python setup.py develop

COPY ./backend/start.sh /