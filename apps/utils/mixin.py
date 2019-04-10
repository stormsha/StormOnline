# _*_ coding: utf-8 _*_
# ---------------------------
__author__ = 'StormSha'
__date__ = '2018/4/30 16:29'
# ---------------------------

from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator


# ----------------自定义login登陆权限-----------------------------
class LoginRequiredMixin(object):

    @method_decorator(login_required(login_url='/login/'))
    def dispatch(self, request, *args, **kwargs):
        return super(LoginRequiredMixin, self).dispatch(request, *args, **kwargs)