# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

#class AuthGroup(models.Model):
#    id = models.IntegerField(primary_key=True)
#    name = models.CharField(max_length=240, unique=True)
#    class Meta:
#        db_table = u'auth_group'
#
#class AuthGroupPermissions(models.Model):
#    id = models.IntegerField(primary_key=True)
#    group = models.ForeignKey(AuthGroup)
#    permission = models.ForeignKey(AuthPermission)
#    class Meta:
#        db_table = u'auth_group_permissions'
#
#class AuthPermission(models.Model):
#    id = models.IntegerField(primary_key=True)
#    name = models.CharField(max_length=150)
#    content_type = models.ForeignKey(DjangoContentType)
#    codename = models.CharField(max_length=300, unique=True)
#    class Meta:
#        db_table = u'auth_permission'
#
#class AuthUser(models.Model):
#    id = models.IntegerField(primary_key=True)
#    username = models.CharField(max_length=90, unique=True)
#    first_name = models.CharField(max_length=90)
#    last_name = models.CharField(max_length=90)
#    email = models.CharField(max_length=225)
#    password = models.CharField(max_length=384)
#    is_staff = models.IntegerField()
#    is_active = models.IntegerField()
#    is_superuser = models.IntegerField()
#    last_login = models.DateTimeField()
#    date_joined = models.DateTimeField()
#    class Meta:
#        db_table = u'auth_user'
#
#class AuthUserGroups(models.Model):
#    id = models.IntegerField(primary_key=True)
#    user = models.ForeignKey(AuthUser)
#    group = models.ForeignKey(AuthGroup)
#    class Meta:
#        db_table = u'auth_user_groups'
#
#class AuthUserUserPermissions(models.Model):
#    id = models.IntegerField(primary_key=True)
#    user = models.ForeignKey(AuthUser)
#    permission = models.ForeignKey(AuthPermission)
#    class Meta:
#        db_table = u'auth_user_user_permissions'
#
#class DjangoAdminLog(models.Model):
#    id = models.IntegerField(primary_key=True)
#    action_time = models.DateTimeField()
#    user = models.ForeignKey(AuthUser)
#    content_type = models.ForeignKey(DjangoContentType, null=True, blank=True)
#    object_id = models.TextField(blank=True)
#    object_repr = models.CharField(max_length=600)
#    action_flag = models.IntegerField()
#    change_message = models.TextField()
#    class Meta:
#        db_table = u'django_admin_log'
#
#class DjangoContentType(models.Model):
#    id = models.IntegerField(primary_key=True)
#    name = models.CharField(max_length=300)
#    app_label = models.CharField(max_length=300, unique=True)
#    model = models.CharField(max_length=300, unique=True)
#    class Meta:
#        db_table = u'django_content_type'
#
#class DjangoSession(models.Model):
#    session_key = models.CharField(max_length=120, primary_key=True)
#    session_data = models.TextField()
#    expire_date = models.DateTimeField()
#    class Meta:
#        db_table = u'django_session'
#
#class DjangoSite(models.Model):
#    id = models.IntegerField(primary_key=True)
#    domain = models.CharField(max_length=300)
#    name = models.CharField(max_length=150)
#    class Meta:
#        db_table = u'django_site'
#
#class JsontestChoice(models.Model):
#    id = models.IntegerField(primary_key=True)
#    poll = models.ForeignKey(JsontestPoll)
#    choice = models.CharField(max_length=600)
#    votes = models.IntegerField()
#    class Meta:
#        db_table = u'jsonTest_choice'
#
#class JsontestPoll(models.Model):
#    id = models.IntegerField(primary_key=True)
#    question = models.CharField(max_length=600)
#    pub_date = models.DateTimeField()
#    class Meta:
#        db_table = u'jsonTest_poll'

class MovieItems(models.Model):
    rating_max = models.IntegerField(null=True, blank=True)
    rating_average = models.FloatField(null=True, blank=True)
    rating_stars = models.CharField(max_length=60, blank=True)
    rating_min = models.IntegerField(null=True, blank=True)
    reviews_count = models.IntegerField(null=True, blank=True)
    wish_count = models.IntegerField(null=True, blank=True)
    douban_site = models.CharField(max_length=150, blank=True)
    year = models.CharField(max_length=30, blank=True)
    image_small = models.CharField(max_length=300, blank=True)
    image_large = models.CharField(max_length=300, blank=True)
    image_medium = models.CharField(max_length=300, blank=True)
    subject_url = models.CharField(max_length=150, blank=True)
    subject_id = models.CharField(max_length=150, primary_key=True)
    mobile_url = models.CharField(max_length=150, blank=True)
    title = models.CharField(max_length=300, blank=True)
    do_count = models.IntegerField(null=True, blank=True)
    seasons_count = models.IntegerField(null=True, blank=True)
    schedule_url = models.CharField(max_length=150, blank=True)
    episodes_count = models.IntegerField(null=True, blank=True)
    genres = models.CharField(max_length=150, blank=True)
    current_season = models.IntegerField(null=True, blank=True)
    collect_count = models.IntegerField(null=True, blank=True)
    casts = models.CharField(max_length=90, blank=True)
    countries = models.CharField(max_length=60, blank=True)
    original_title = models.CharField(max_length=300, blank=True)
    summary = models.TextField(blank=True)
    summary_segmentation = models.TextField(blank=True)
    subtype = models.CharField(max_length=30, blank=True)
    directors = models.CharField(max_length=60, blank=True)
    comments_count = models.IntegerField(null=True, blank=True)
    ratings_count = models.IntegerField(null=True, blank=True)
    aka = models.CharField(max_length=150, blank=True)
    class Meta:
        db_table = u'movie_items'

