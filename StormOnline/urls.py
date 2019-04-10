# _ * _ coding: utf-8 _ * _
"""StormOnline URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
# ---------------python-------------------------
import xadmin
# ---------------django-------------------------
from django.conf.urls import url, include
from django.views.generic import TemplateView
from django.views.static import serve
from StormOnline.settings import MEDIA_ROOT
# ---------------model--------------------------
from users.views import LoginView, RegisterView, ActiveUserView, ForgetPwdView, ResetView, ModifyPwdView, LogoutView
from users.views import IndexView
from organization.views import OrgView

# ----------------url------------------------------
urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url(r'^$', IndexView.as_view(), name="index"),

    # -------------------------user--------------------------
    url(r'^login/$', LoginView.as_view(), name="login"),
    url(r'^logout/$', LogoutView.as_view(), name="logout"),
    url(r'^register/$', RegisterView.as_view(), name="register"),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(), name="user_active"),
    url(r'^forget/$', ForgetPwdView.as_view(), name="forget_pwd"),
    url(r'^reset/(?P<reset_code>.*)/$', ResetView.as_view(), name="reset_pwd"),
    url(r'^modify/$', ModifyPwdView.as_view(), name="modify_pwd"),

    # -----------------------organization----------------------
    url(r'^org/', include('organization.urls', namespace="org", app_name='organization')),
    # -----------------------course-----------------------------
    url(r'^course/', include('courses.urls', namespace="course")),
    # -----------------------配置上传文件的访问处理函数路径---------------------
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),
    #url(r'^static/(?P<path>.*)$', serve, {"document_root": STATIC_ROOT}),
    # -------------------------user_center---------------------------------
    url(r'^users/', include('users.urls', namespace="users")),
    # ----------------富文本编辑器-------------------------------------
    url(r'^ueditor/', include('DjangoUeditor.urls')),
    url(r'^ckeditor/', include('ckeditor_uploader.urls'))

]

# 全局404页面配置
handler404 = 'users.views.page_not_found'
# 全局500页面配置
handler500 = 'users.views.page_error'
