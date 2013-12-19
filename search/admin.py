#coding=utf8
from django.contrib import admin
from models import ShortComments

class ShortCommentsAdmin(admin.ModelAdmin):
    list_display = ('subject_id', 'user_name', 'user_comment')

admin.site.register(ShortComments, ShortCommentsAdmin)
