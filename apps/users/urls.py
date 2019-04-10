# encoding: utf-8
from django.conf.urls import url

from users.views import UserInfoView, UploadImageView, UpdatePwdView, UpdateEmailView, SendEmailCodeView
# , UpdatePwdView

from users.views import MyCourseView, MyFavOrgView, MyFavCourseView, MyFavTeacherView, MyMessageView

#

urlpatterns = [
    # -----用户信息-----------
    url(r'^info/', UserInfoView.as_view(), name="user_info"),
    # ----用户头像上传----------------------
    url(r'^image/upload/$', UploadImageView.as_view(), name="image_upload"),
    # ----用户中心修改密码-----------------
    url(r'^update/pwd/', UpdatePwdView.as_view(), name="update_pwd"),
    # 发送邮箱验证码
    url(r'^sendemail_code/$', SendEmailCodeView.as_view(), name="sendemail_code"),
    # 修改个人中心邮箱
    url(r'^update_email/$', UpdateEmailView.as_view(), name='update_email'),
    # -----我的课程-------------
    url(r'^my_course/', MyCourseView.as_view(), name="my_course"),
    # ----------我收藏的机构--------------
    url(r'^fav/org/', MyFavOrgView.as_view(), name="fav_org"),
    # ----------收藏的课程--------------------
    url(r'^fav/course/', MyFavCourseView.as_view(), name="fav_course"),
    # -----------收藏的讲师-----------------------
    url(r'^fav/teacher/', MyFavTeacherView.as_view(), name="fav_teacher"),
    # -----------我的消息-----------------------
    url(r'^my/message/', MyMessageView.as_view(), name="my_message")

]
