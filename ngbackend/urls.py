from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

#from ngbackend import jsonTest

urlpatterns = patterns('',
    # Examples:
     url(r'^$', 'ngbackend.views.hello', name='hello'),
    # url(r'^ngbackend/', include('ngbackend.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
     url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
     url(r'^admin/', include(admin.site.urls)),

    # Url conf for jsonTest
    url(r'^jsonTest/$', 'ngbackend.views.jsonTest', name='jsonTest'),

    # Url conf for appTest
    url(r'^appTest/$', 'jsonTest.views.appTest', name='apptest'),

    # Url conf for moviecrawler
    url(r'^addmoviebyid/$', 'moviecrawler.views.addMovieByID', name='addmovie'),
    url(r'^hellomoviecrawler/$', 'moviecrawler.views.helloMovieCrawler', name='hellocrawler'),

    # Url conf for search
    #url(r'^search/$', 'search.views.search', name='search'),
    #url(r'^search/$', 'ngbackend.search.search', name='search'),
    url(r'^search/', include('search.urls')),
)
