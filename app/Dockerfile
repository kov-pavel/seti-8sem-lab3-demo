FROM python:3.11

# Shell
SHELL ["/bin/bash", "-c"]

# Env
ENV PYTHONDOWTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Settings
RUN pip install --upgrade pip
RUN useradd -rms /bin/bash kovpavel && chmod 777 /opt /run

# Copying project
WORKDIR /kovpavel
RUN mkdir /kovpavel/static && mkdir /kovpavel/media && chown -R kovpavel:kovpavel /kovpavel && chmod 755 /kovpavel
COPY --chown=kovpavel:kovpavel . ./app

# Requirements & migrations
WORKDIR ./app
RUN pip install -r requirements.txt
RUN python manage.py collectstatic --noinput && python manage.py makemigrations && python manage.py migrate

# gunicorn
USER kovpavel
CMD ["gunicorn", "-b", "127.0.0.1:8001", "mysite.wsgi:application"]
