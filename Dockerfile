FROM python:3.8
RUN apt-get update && apt-get -y upgrade
RUN pip install django
COPY . /crm
WORKDIR /crm
CMD [ "python manage.py runserver" ]
