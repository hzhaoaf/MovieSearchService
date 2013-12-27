Async For Add Movies
====================

### Options for Asynchronous
Several approaches exist for doing asynchronous jobs, which are:

*   [Celery](http://www.celeryproject.org/)

Celery is an asynchronous task queue/job queue based on distributed message passing.It is focused on real-time operation,   but supports scheduling as well.
The execution units, called tasks, are executed concurrently on a single or more worker servers using multiprocessing, Eventlet,or gevent. Tasks can execute asynchronously (in   the background) or synchronously (wait until ready).
Celery is used in production systems to process millions of tasks a day.

For getting started, refer to [First Steps with Celery](http://docs.celeryproject.org/en/latest/getting-started/first-steps-with-celery.html#id10) and [First steps with Django](http://docs.celeryproject.org/en/latest/django/first-steps-with-django.html).

*   [django-chronograph](https://bitbucket.org/wnielson/django-chronograph/)

Control `django-admin` commands via the web.
Creating cron jobs for Django apps can be a pain, annoying and repetitive. With `django-chronograph` you simply create a single cron job to run every minute, point it at your site's directory and run `manage.py cron`. Then from the admin you can add jobs.
Note
`django-chronograph` supports Django 1.1+.

*   [Django-tasks](https://code.google.com/p/django-tasks/)

Django-tasks is an asynchronous task management daemon, to execute long-running batch tasks (minutes, hours or even days) on a Django server.

Django-tasks is for a different usage from most other tasks frameworks (Celery, Cue...): this is not for numerous, quick, light, tasks, but for few, long, heavy, tasks. Typical usage is to batch process data for each model object, and give information about the processing to the user.

Also, no other software or library is needed. Django-tasks simply uses the Django database as a queue (and Tasks are a simple model); and each task is spawned as its own process.

*   [Django Async](http://www.kirit.com/Django%20Async)

Django Async is an asynchronous execution queue for Django with proper database transaction management

Building a database backed task queue is a fairly trivial thing, but getting the database transactions exactly right is no simple matter.

*   [Simple Django Asynchronous Processing](http://stancarney.co/2013/01/simple-django-asynchronous-processing/)

Light option, refer to the author's post for more details.


### Our Approach 
However, We come up with our own approach, since we prefer to leave each module alone.

The method is simple enough for everyone to understand. 

*   User send a request through their client to our django server to add a new movie ID
*   Django deals with the request and save the movie ID into a plan text file or some other formatted file
*   A python script controlled by `cron` regularly to read the movie IDs from the file, one ID at a time, process it and delete the ID
*   As long as we have new IDs, process it, or, just return

For getting started with `Cron`, refer to [Crontab - Quick Reference](http://www.adminschoice.com/crontab-quick-reference/).

