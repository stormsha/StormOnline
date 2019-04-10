# _*_ coding: utf-8 _*_
# ---------------------------
__author__ = 'StormSha'
__date__ = '2018/3/28 17:49'
# ---------------------------
# --------------------python----------------------
import re
# --------------------django----------------------
from django import forms
# --------------------model-----------------------
from operation.models import UserAsk


# # ---------------自定义----------------------------------------------
# class UserAskForm(forms.Form):
#     name = forms.CharField(required=True, min_length=2, max_length=20)
#     phone = forms.CharField(required=True, min_length=11, max_length=11)
#     course_name = forms.CharField(required=True, max_length=5, min_length=5)


# ------------------继承model--------------------------
class UserAskForm(forms.ModelForm):
    class Meta:
        model = UserAsk
        fields = ['name', 'mobile', 'course_name']

    # -------验证手机号码是否合法-----------------------
    def clean_mobile(self):
        mobile = self.cleaned_data['mobile']
        re_get_mobile = "^1[358]\d{9}$|^147\d{8}$|^176\d{8}$"
        p = re.compile(re_get_mobile)
        if p.match(mobile):
            return mobile
        else:
            raise forms.ValidationError(u"手机号码非法", code="mobile_invalid")

