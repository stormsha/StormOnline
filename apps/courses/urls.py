# _*_ coding: utf-8 _*_
# ---------------------------
__author__ = 'StormSha'
__date__ = '2018/3/20 11:18'
# ---------------------------

# ------------------django-----------------------------
from django.conf.urls import url, include
# -----------------model------------------------------
from .views import CourseListView, CourseDetailView, CourseInfoView, CommentsView, AddCommentsView, VideoPlayView, CommentsView1

urlpatterns = [
    url(r'^list/$', CourseListView.as_view(), name="course_list"),
    url(r'^detail/(?P<course_id>\d+)/$', CourseDetailView.as_view(), name="course_detail"),
    # 课程信息
    url(r'^info/(?P<course_id>\d+)/$', CourseInfoView.as_view(), name="course_info"),
    # 课程评论
    url(r'^comment/(?P<course_id>\d+)/$', CommentsView.as_view(), name="course_comment"),
    # 添加课程评论
    url(r'^add_comment/$', AddCommentsView.as_view(), name="add_comment"),
    # 视频播放
    url(r'^video/(?P<video_id>\d+)/$', VideoPlayView.as_view(), name="video_play"),
    # 会员课程评论
    url(r'^comment_1/(?P<course_id>\d+)/$', CommentsView1.as_view(), name="course_comment_1")
]