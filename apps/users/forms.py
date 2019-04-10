# _*_ coding: utf-8 _*_
__author__ = 'StormSha'
__date__ = '2018/3/13 20:48'

# -------------------python------------------------
# -------------------django------------------------
from django import forms
from captcha.fields import CaptchaField
from django.forms import widgets
from django.core.exceptions import ValidationError

from users.models import UserProfile


# ---------------登陆业务逻辑-----------------------
class LoginForm(forms.Form):
    username = forms.CharField(required=True)
    password = forms.CharField(required=True, min_length=5)
    # username = forms.CharField(
    #     min_length=2,
    #     max_length=15,
    #     # --------------------触发错误信息-----------------
    #     error_messages={"required": "该字段不能为空",
    #                     "min_length": "用户名长度不能小于2",
    #                     "max_length": "用户名长度不能大于15"},
    #     # ---------------------input属性---------------------
    #     widget=widgets.TextInput(attrs={
    #         "class": "form-control",
    #         "placeholder": "2-15 位中文/字母/下划线"}
    #     )
    # )
    # password = forms.CharField(
    #     min_length=6,
    #     max_length=20,
    #     strip=True,
    #     error_messages={"required": "该字段不能为空",
    #                     "min_length": "密码长度不能小于6位",
    #                     "max_length": "密码长度不能大于20位"},
    #     widget=widgets.PasswordInput(attrs={
    #         "class": "form-control",
    #         "placeholder": "密码需6-20个字符",
    #         "id": "inputPassword3"}
    #     )
    # )


# -------------------注册业务逻辑--------------------------
class RegisterForm(forms.Form):
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, min_length=5)
    captcha = CaptchaField(error_messages={"invalid": "验证码错误"})


# ------------------找回密码业务逻辑------------------------
class ForgetpwdForm(forms.Form):
    email = forms.EmailField(required=True)
    captcha = CaptchaField(error_messages={"invalid": u'验证码错误'})


# -----------------重置密码业务逻辑-------------------------------
class ModifyPwdForm(forms.Form):
    # 密码不能小于5位
    password1 = forms.CharField(required=True, min_length=5)
    # 密码不能小于5位
    password2 = forms.CharField(required=True, min_length=5)


# -------------用户文件上传，修改头像-------------------
class UploadImageForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ["image"]


# 用于个人中心修改个人信息
class UserInfoForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        fields = ['nick_name', 'gender', 'birthday', 'address', 'mobile']


# 激活时验证码实现
class ActiveForm(forms.Form):
    # 激活时不对邮箱密码做验证
    # 应用验证码 自定义错误输出key必须与异常一样
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})