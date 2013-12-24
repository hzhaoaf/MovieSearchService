import logging
from time import sleep

from django.core.management.base import BaseCommand
from django.db import transaction
from apps.async.models import Task


log = logging.getLogger("jobs")

class Command(BaseCommand):
    help = """
    Use with the following options:
        - start
        - stop
    """

    EXCEPTION_THRESHOLD = 3

    def handle(self, *args, **options):
        if args:
            try:
                getattr(self, args[0])(list(args[1:]))
            except AttributeError:
                print "\nInvalid option supplied."
                print self.use
        else:
            print self.help

    def start(self, args):
        exception_count = 0
        stop = False
        current_task_id = None
        while not stop:
            try:
                with transaction.commit_on_success():
                    tasks = Task.objects.raw('SELECT * FROM async_task at WHERE at.executed = false ORDER BY at.id FOR UPDATE LIMIT 1')
                    if len(list(tasks)):
                        task = tasks[0]
                        log.info("Running %s" % task.script)
                        current_task_id = task.id
                        if task.script == 'ASYNC_STOP':
                            stop = True
                        else:
                            exec(task.script)
                            exception_count = 0
                        task.executed = True
                        task.save()
                    else:
                        current_task_id = None
            except:
                log.exception('Async Crashed')
                exception_count += 1

                # we need to mark the failed task as executed in another DB transaction.
                if current_task_id:
                    with transaction.commit_on_success():
                        tasks = Task.objects.raw('SELECT * FROM async_task at WHERE at.id = %s and at.executed = false ORDER BY at.id FOR UPDATE', [current_task_id])
                        if len(list(tasks)):
                            task = tasks[0]
                            task.executed = True
                            task.save()

            if exception_count >= self.EXCEPTION_THRESHOLD:
                sleep(10)
            else:
                sleep(0.5)

    def stop(self, args):
        Task.objects.create(script='ASYNC_STOP')
        