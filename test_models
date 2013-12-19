# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class MovieAwards(models.Model):
    subject_id = models.CharField(max_length=150, primary_key=True)
    movie_name = models.CharField(max_length=450, blank=True)
    award_items = models.CharField(max_length=15000, blank=True)
    class Meta:
        db_table = u'movie_awards'

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
    casts = models.CharField(max_length=6000, blank=True)
    countries = models.CharField(max_length=60, blank=True)
    original_title = models.CharField(max_length=300, blank=True)
    summary = models.TextField(blank=True)
    summary_segmentation = models.TextField(blank=True)
    subtype = models.CharField(max_length=30, blank=True)
    directors = models.CharField(max_length=3000, blank=True)
    comments_count = models.IntegerField(null=True, blank=True)
    ratings_count = models.IntegerField(null=True, blank=True)
    aka = models.CharField(max_length=150, blank=True)
    user_tags = models.CharField(max_length=1500, blank=True)
    others_like = models.CharField(max_length=3000, blank=True)
    adjs = models.TextField()
    class Meta:
        db_table = u'movie_items'

class ShortComments(models.Model):
    comment_id = models.IntegerField(primary_key=True)
    user_name = models.CharField(max_length=150, blank=True)
    user_comment = models.CharField(max_length=1500, blank=True)
    comment_date = models.CharField(max_length=150, blank=True)
    subject_id = models.CharField(max_length=150)
    vote_number = models.CharField(max_length=30, blank=True)
    user_star = models.CharField(max_length=30, blank=True)
    class Meta:
        db_table = u'short_comments'

