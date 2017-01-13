## abrahammouse/py3-django-uwsgi-nginx


## Important

docker image for python3 django (uwsgi) & nginx (No Python2 in this image)
based of official ubuntu:14.04

To pull this image:
`docker pull abrahammouse/py3-django-uwsgi-nginx`

Example usage:
`docker run -p 80 -d -e MODULE=myapp abrahammouse/py3-django-uwsgi-nginx`

You can mount the application volume to run a specific application.  The default volume inside in the container is `/opt/django/app`.  Here is an example:
`docker run -p 80 -d -e MODULE=myapp -v /home/yourname/myapp:/opt/django/app abrahammouse/py3-django-uwsgi-nginx`

By default, this just runs a default 'welcome to django' project.
