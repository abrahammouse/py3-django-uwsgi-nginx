FROM ubuntu:14.04
MAINTAINER Abrahammouse <abrahammouse@gmail.com>
RUN apt-get update && \
  apt-get install -y \
  git python3 python3-dev python3-setuptools \
  nginx sqlite3 supervisor
RUN easy_install3 pip
RUN pip install uwsgi

ADD . /opt/django/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /opt/django/django.conf /etc/nginx/sites-enabled/
RUN ln -s /opt/django/supervisord.conf /etc/supervisor/conf.d/

RUN pip install -r /opt/django/app/requirements.txt && \
  chmod +x /opt/django/run.sh

VOLUME ["/opt/django/app"]
EXPOSE 80
CMD ["/opt/django/run.sh"]