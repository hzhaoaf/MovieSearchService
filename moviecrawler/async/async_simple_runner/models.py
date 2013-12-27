from django.db import models
from apps.fields import BigAutoField, BigForeignKey

class Task(models.Model):
    id = BigAutoField(primary_key=True)
    script = models.TextField()
    executed = models.BooleanField(default=False)
    date_created = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)

