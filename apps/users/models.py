# -*- coding:utf-8 -*-

#import  python自带的包
from __future__ import unicode_literals

from datetime import datetime

#import第三方 model
# 导入django默认的用户models模块
from django.db import models
from django.contrib.auth.models import AbstractUser

# import自定义的model


# Create your models here.

# django默认生成的用户表不能满足项目的需求，需要扩展user用户表
# 这里继承原有的用户models进行扩展


class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name=u"昵称", default="")
    # 生日可以是空值，因为用户不一定愿意填写生日
    birthday = models.DateField(verbose_name=u"生日", null=True, blank=True)
    gender = models.CharField(max_length=6, choices=(("male", u"男"), ("female", "女")), default="female")
    address = models.CharField(max_length=100, default=u"")
    mobile = models.CharField(max_length=11, null=True, blank=True)
    image = models.ImageField(upload_to="image/%Y/%m", default="media/image/upload.png", max_length=100)

    class Meta:
        verbose_name = u"用户信息"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.username

    # 用户未读消息统计
    def unread_num(self):
        # 获取用户未读消息数量
        # 必须import在这里，避免循环import
        from operation.models import UserMessage
        return UserMessage.objects.filter(has_read=False, user=self.id).count()


class EmailVerifyRecord(models.Model):
    code = models.CharField(max_length=20, verbose_name=u"验证码")
    email = models.EmailField(max_length=50, verbose_name=u"邮箱")
    send_type = models.CharField(verbose_name=u"验证码类型", choices=(("register", u"注册"), ("forget", u"找回密码"), ("update_email", u"修改邮箱")), max_length=20)
    send_time = models.DateTimeField(verbose_name=u"发送时间", default=datetime.now)

    class Meta:
        verbose_name = u"邮箱验证码"
        verbose_name_plural = verbose_name

    # 邮箱验证显示为：验证码（邮箱）
    def __unicode__(self):
        return '{0}({1})'.format(self.code, self.email)


class Banner(models.Model):
    title = models.CharField(max_length=100, verbose_name=u"标题")
    image = models.ImageField(upload_to="banner/%Y/%m", verbose_name="轮播图")
    url = models.URLField(max_length=200, verbose_name=u"访问地址")
    index = models.IntegerField(default=100, verbose_name=u"顺序")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"轮播图"
        verbose_name_plural = verbose_name





