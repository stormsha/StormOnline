# -*-coding:utf-8-*-
# python
from __future__ import unicode_literals
from datetime import datetime
import sys
# django
from django.db import models
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericForeignKey

# models
from users.models import UserProfile
from courses.models import Course

# Create your models here.
reload(sys)
sys.setdefaultencoding('utf8')


class UserAsk(models.Model):
    name = models.CharField(max_length=20,verbose_name=u"姓名")
    mobile = models.CharField(max_length=11,verbose_name=u"手机")
    course_name = models.CharField(max_length=50,verbose_name=u"课程名")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = u"用户咨询"
        verbose_name_plural = verbose_name


class CourseComments(models.Model):
    user = models.ForeignKey(UserProfile, verbose_name=u"用户", related_name="comments", on_delete=models.DO_NOTHING)
    # course = models.ForeignKey(Course, verbose_name=u"课程")
    object_id = models.PositiveIntegerField(null=True, blank=True)
    content_type = models.ForeignKey(ContentType, on_delete=models.DO_NOTHING, null=True, blank=True)
    # comments = models.CharField(max_length=200, verbose_name=u"评论")
    content_object = GenericForeignKey('content_type', 'object_id')

    # 树结构评论
    root = models.ForeignKey('self', null=True, related_name="root_comment", on_delete=models.DO_NOTHING)
    parent = models.ForeignKey('self', null=True, related_name="parent_comment", on_delete=models.DO_NOTHING)
    reply_to = models.ForeignKey(UserProfile, null=True, related_name="replies", on_delete=models.DO_NOTHING)

    text = models.TextField()
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = u"课程评论"
        verbose_name_plural = verbose_name
        ordering = ['-add_time']

    def __unicode__(self):
        return self.text


class UserFavorite(models.Model):
    user = models.ForeignKey(UserProfile, verbose_name=u"用户")
    fav_id = models.IntegerField(default=0, verbose_name=u"数据id")
    fav_type = models.IntegerField(choices=((1, "课程"), (2, "课程机构"),(3, "讲师")), verbose_name=u"收藏类型")
    add_time = models.DateTimeField(default=datetime.now,verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"用户收藏"
        verbose_name_plural = verbose_name


class UserMessage(models.Model):
    user = models.IntegerField(default=0, verbose_name=u"接受用户")
    message = models.CharField(max_length=500, verbose_name=u"消息内容")
    has_read = models.BooleanField(default=False, verbose_name=u"是否已读")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"用户消息"
        verbose_name_plural = verbose_name


class UserCourse(models.Model):
    user = models.ForeignKey(UserProfile, verbose_name=u"用户")
    course = models.ForeignKey(Course, verbose_name=u"课程")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"用户课程"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.user.username
