"""
    Django settings for wthome project.
    
    For more information on this file, see
    https://docs.djangoproject.com/en/1.7/topics/settings/
    
    For the full list of settings and their values, see
    https://docs.djangoproject.com/en/1.7/ref/settings/
    """

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
BASE_DIR = os.path.abspath(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.7/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'v=d%cc^=g_+u16b4#&xj7@1z(b@9qeh+43(du$6j+jfl12iy70'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = False

# Application definition

INSTALLED_APPS = (
                  'django.contrib.admin',
                  'django.contrib.auth',
                  'django.contrib.contenttypes',
                  'django.contrib.sessions',
                  'django.contrib.messages',
                  'django.contrib.staticfiles',
                  'home'
                  )

MIDDLEWARE_CLASSES = (
                      'django.contrib.sessions.middleware.SessionMiddleware',
                      'django.middleware.common.CommonMiddleware',
                      'django.middleware.csrf.CsrfViewMiddleware',
                      'django.contrib.auth.middleware.AuthenticationMiddleware',
                      'django.contrib.messages.middleware.MessageMiddleware',
                      'django.middleware.clickjacking.XFrameOptionsMiddleware',
                      )

ROOT_URLCONF = 'wthome.urls'

#WSGI_APPLICATION = 'wthome.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.7/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': "db3kfarohu8li2",
        'USER': 'esnpvxtuxrdhht',
        'PASSWORD': 'qfWzDZoPEWz4A-Z3qRUd6rKXOi',
        'HOST': 'ec2-54-235-146-58.compute-1.amazonaws.com',
        'PORT': '5432',
}
}

# Internationalization
# https://docs.djangoproject.com/en/1.7/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Honor the 'X-Forwarded-Proto' header for request.is_secure()
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# Allow all host headers
ALLOWED_HOSTS = ['*']

DEBUG = True
TEMPLATE_DEBUG = DEBUG

ADMINS = (
          # ('Your Name', 'your_email@example.com'),
          )

MANAGERS = ADMINS


# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# On Unix systems, a value of None will cause Django to use the same
# timezone as the operating system.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'America/Chicago'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-us'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale
USE_L10N = True

# Absolute path to the directory static files should be collected to.
# Don't put anything in this directory yourself; store your static files
# in apps' "static/" subdirectories and in STATICFILES_DIRS.
# Example: "/home/media/media.lawrence.com/static/"
STATIC_ROOT = os.path.join(BASE_DIR, 'static/')

# URL prefix for static files.
# Example: "http://media.lawrence.com/static/"
STATIC_URL = './static/'


# Additional locations of static files
STATICFILES_DIRS = (
                    # Put strings here, like "/home/html/static" or "C:/www/django/static".
                    # Always use forward slashes, even on Windows.
                    # Don't forget to use absolute paths, not relative paths.
                    )

# List of finder classes that know how to find static files in
# various locations.
STATICFILES_FINDERS = (
                       'django.contrib.staticfiles.finders.FileSystemFinder',
                       'django.contrib.staticfiles.finders.AppDirectoriesFinder',
                       #    'django.contrib.staticfiles.finders.DefaultStorageFinder',
                       )

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
                    'django.template.loaders.filesystem.Loader',
                    'django.template.loaders.app_directories.Loader',
                    #     'django.template.loaders.eggs.Loader',
                    )

TEMPLATE_DIRS = (
                 # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
                 # Always use forward slashes, even on Windows.
                 # Don't forget to use absolute paths, not relative paths.
                 os.path.join(BASE_DIR, 'home/templates'),
                 )

TEMPLATE_CONTEXT_PROCESSORS = (
                               'django.core.context_processors.debug',
                               'django.core.context_processors.i18n',
                               'django.core.context_processors.media',
                               'django.core.context_processors.static',
                               'django.contrib.auth.context_processors.auth',
                               'django.contrib.messages.context_processors.messages',
                               )



