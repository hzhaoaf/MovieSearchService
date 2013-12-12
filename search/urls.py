from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('search.views',
    # Examples:
    url(r'index/$', 'index'),
    url(r'(?P<subject_id>\d+)/$', 'detail'),
    url(r'custom_search/$', 'search_by_custom_parser'),
    url(r'search/$', 'search'),

)
