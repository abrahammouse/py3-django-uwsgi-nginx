mbentley/ubuntu-django-uwsgi-nginx
==================

## Important
Note:  I am no longer maintaining this version as I have moved this Docker image to its own repo.  Please see https://github.com/mbentley/docker-django-uwsgi-nginx.  The new Docker image is named mbentley/django-uwsgi-nginx.

docker image for django (uwsgi) & nginx
based off of stackbrew/ubuntu:12.04

To pull this image:
`docker pull mbentley/ubuntu-django-uwsgi-nginx`

Example usage:
`docker run -p 80 -d -e MODULE=myapp mbentley/ubuntu-django-uwsgi-nginx`

You can mount the application volume to run a specific application.  The default volume inside in the container is `/opt/django/app`.  Here is an example:
`docker run -p 80 -d -e MODULE=myapp -v /home/mbentley/myapp:/opt/django/app mbentley/ubuntu-django-uwsgi-nginx`

By default, this just runs a default 'welcome to django' project.
