from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from home.views import *
# Uncomment the next two lines to enable the admin:
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'wthome.views.home', name='home'),
    
    # Static Urls to css, js, images
    # beginning (.*) makes the admin page look good
    (r'^(.*)static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_ROOT}),
    (r'^(.*)media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),
    
    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    # url(r'^blog/', include('blog.urls')),
    url(r'^admin/', include(admin.site.urls)),

    url(r'^$', mainPage),
    # For CETS apache the server
    url(r'^index.php$', mainPage),
    # url(r'^login/', include('home.urls'))
    

)
