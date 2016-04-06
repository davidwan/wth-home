# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals
import os
from django.db import models


class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey('AuthPermission')

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'


class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=50)
    content_type = models.ForeignKey('DjangoContentType')
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'


class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField()
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=30)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=75)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    group = models.ForeignKey(AuthGroup)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'


class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    permission = models.ForeignKey(AuthPermission)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'


class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', blank=True, null=True)
    user = models.ForeignKey(AuthUser)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=100)
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'


class DjangoMigrations(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Users(models.Model):
    id = models.IntegerField()
    email = models.CharField(primary_key=True, max_length=62)
    fname = models.CharField(max_length=50)
    lname = models.CharField(max_length=50)
    phone = models.CharField(max_length=15)
    address = models.CharField(max_length=80)
    address2 = models.CharField(max_length=80, blank=True)
    city = models.CharField(max_length=35)
    state = models.CharField(max_length=15)
    zip = models.CharField(max_length=10)
    country = models.CharField(max_length=50)
    admin_level = models.IntegerField()
    school = models.CharField(max_length=25, blank=True)
    major = models.CharField(max_length=25, blank=True)
    graduation_year = models.CharField(max_length=4, blank=True)

    class Meta:
        managed = False
        db_table = 'users'

class Banner(models.Model):
    name = models.CharField(max_length=50)
    status = models.BooleanField()
    content = models.CharField(max_length=500)
    link = models.CharField(max_length=500, default=None, blank=True, null=True)


    class Meta(object):
        managed = True
        db_table = 'banners'
        app_label = 'home'

    def __str__(self):
        return self.name

class Alumni(models.Model):

    def get_image_path(instance, filename):
        return os.path.join('alumni', filename)

    name = models.CharField(max_length=50)
    content = models.CharField(max_length=500)
    website = models.CharField(max_length=500, blank=True)
    image = models.ImageField(upload_to=get_image_path, help_text='For best results, pictures should be 450x320!')


    class Meta(object):
        managed = True
        db_table = 'alumni'
        app_label = 'home'

    def __str__(self):
        return self.name


class Committee(models.Model):

    name = models.CharField(max_length=50)
    icon = models.CharField(max_length=500, help_text="If you want to change the committees icon, see https://fortawesome.github.io/Font-Awesome/icons/ for a full list of available icons")
    text_1 = models.CharField(max_length=500, blank=True)
    text_2 = models.CharField(max_length=500, blank=True)
    text_3 = models.CharField(max_length=500, blank=True)
    current_info = models.CharField(max_length=500, blank=True)
    current_info_link = models.CharField(max_length=500, blank=True)


    class Meta(object):
        managed = True
        db_table = 'committee'
        app_label = 'home'

    def __str__(self):
        return self.name

class TeamMember(models.Model):

    def get_image_path(instance, filename):
        return os.path.join('team_member', filename)

    name = models.CharField(max_length=100)
    role = models.CharField(max_length=100, blank=True)
    bio = models.CharField(max_length=2000, blank=True)
    image = models.ImageField(upload_to=get_image_path, help_text="For best results, pictures should be 313x213!")


    class Meta(object):
        managed = True
        db_table = 'team_member'
        app_label = 'home'

    def __str__(self):
        return self.name
