#!/bin/bash

NAME="portfoliowebsite"                              #Name of the application (*)
DJANGODIR=/var/www/mysite/portfoliowebsite             # Django project directory (*)
SOCKFILE=/var/www/mysite/run/gunicorn.sock        # we will communicate using this unix socket (*)
USER=ubuntu                                        # the user to run as (*)
GROUP=ubuntu                                     # the group to run as (*)
NUM_WORKERS=1                                     # how many worker processes should Gunicorn spawn (*)
DJANGO_SETTINGS_MODULE=portfoliowebsite.settings             # which settings file should Django use (*)
DJANGO_WSGI_MODULE=portfoliowebsite.wsgi                     # WSGI module name (*)

echo "Starting $NAME as `whoami`"

# Activate the virtual environment
cd $DJANGODIR
source /var/www/mysite/venv/bin/activate
export DJANGO_SETTINGS_MODULE=$DJANGO_SETTINGS_MODULE
export PYTHONPATH=$DJANGODIR:$PYTHONPATH

# Create the run directory if it doesn't exist
RUNDIR=$(dirname $SOCKFILE)
test -d $RUNDIR || mkdir -p $RUNDIR

# Start your Django Unicorn
# Programs meant to be run under supervisor should not daemonize themselves (do not use --daemon)
exec /var/www/mysite/venv/bin/gunicorn ${DJANGO_WSGI_MODULE}:application \
  --name $NAME \
  --workers $NUM_WORKERS \
  --user $USER \
  --bind=unix:$SOCKFILE