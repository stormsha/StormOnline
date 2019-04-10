# _*_ coding: utf-8 _*_
# ----------------django------------------
import json

from django.core.urlresolvers import reverse
from django.shortcuts import render, redirect
from django.views.generic.base import View
from django.http import HttpResponse, JsonResponse
from django.db.models import Q
from django.contrib.contenttypes.models import ContentType
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.core import serializers
# ----------------model-------------------
from .models import Course, CourseResource, Video
from operation.models import UserFavorite, CourseComments, UserCourse
from utils.mixin import LoginRequiredMixin
from .forms import CommentForm
# Create your views here.


class CourseListView(View):
    def get(self, request):
        all_courses = Course.objects.all().order_by("-add_time")

        hot_courses = Course.objects.all().order_by("-click_nums")[:3]

        # -----------------站内课程搜索-----------------------
        search_keywords = request.GET.get('keywords', "")
        if search_keywords:
            # 在name字段进行操作,做like语句的操作。icontains中i代表不区分大小写
            # or操作使用Q
            all_courses = all_courses.filter(Q(name__icontains=search_keywords) | Q(desc__icontains=search_keywords) |
                                             Q(detail__icontains=search_keywords))
        # ------课程排序-----------
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "students":
                all_courses = all_courses.order_by("-students")
            elif sort == "hot":
                all_courses = all_courses.order_by("-click_nums")
        # --------对课程进行分页----------------
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_courses, 6, request=request)
        courses = p.page(page)

        return render(request, 'course-list.html', {
            "all_courses": courses,
            "sort": sort,
            "hot_courses": hot_courses
        })


# ----------------课程详情页----------------------------
class CourseDetailView(View):
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))

        # --------------增加课程点击数---------------
        course.click_nums += 1
        course.save()

        # 是否收藏课程
        has_fav_course = False
        has_fav_org = False

        # 必须是用户已登录我们才需要判断。
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course.id, fav_type=1):
                has_fav_course = True
            if UserFavorite.objects.filter(user=request.user, fav_id=course.course_org.id, fav_type=2):
                has_fav_org = True

        tag = course.tag
        if tag:
            relate_courses = Course.objects.filter(tag=tag)[:1]
        else:
            relate_courses = []
        return render(request, 'course-detail.html', {
            "course": course,
            "relate_courses": relate_courses,
            "has_fav_course": has_fav_course,
            "has_fav_org": has_fav_org
        })


# -------------------------课程章节信息-----------------
class CourseInfoView(LoginRequiredMixin, View):
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        course.students += 1
        course.save()
        # 查询用户是否开始学习了该课，如果还未学习则，加入用户课程表
        user_courses = UserCourse.objects.filter(user=request.user, course=course)
        if not user_courses:
            user_course = UserCourse(user=request.user, course=course)
            course.students += 1
            course.save()
            user_course.save()
        # 查询课程资源
        all_resources = CourseResource.objects.filter(course=course)
        # 选出学了这门课的学生关系
        user_courses = UserCourse.objects.filter(course=course)
        # 从关系中取出user_id
        user_ids = [user_course.user_id for user_course in user_courses]
        # 这些用户学了的课程,外键会自动有id，取到字段
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [user_course.course_id for user_course in all_user_courses]
        # 获取学过该课程用户学过的其他课程
        relate_courses = Course.objects.filter(id__in=course_ids).order_by("-click_nums").exclude(id=course.id)[:4]
        return render(request, "course-video.html", {
            "course": course,
            "course_resources": all_resources,
            "relate_courses": relate_courses
        })


# ---------------------课程评论------------------------
class CommentsView(LoginRequiredMixin, View):
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        # course = get_object_or_404(Course, pk=course_id)
        # read_cookie_key = read_statistics_once_read(request, course)
        all_resources = CourseResource.objects.filter(course=course)
        course_content_type = ContentType.objects.get_for_model(course)
        all_comments = CourseComments.objects.filter(content_type=course_content_type, object_id=course.pk, parent=None)
        context = {}
        context['course'] = course
        context['all_comments'] = all_comments.order_by('-add_time')
        context['comment_count'] = CourseComments.objects.filter(content_type=course_content_type, object_id=course.pk).count()
        context['all_resources'] = all_resources
        context['comment_form'] = CommentForm(initial={'content_type': course_content_type.model, 'object_id': course_id, 'reply_comment_id': 0})
        response = render(request, 'course-comment.html', context)
        return response
        # response.set_cookie(read_cookie_key, 'True')
        # return render(request, "course-comment.html", {
        #     "course": course,
        #     "course_resources": all_resources,
        #     "all_comments": all_comments,
        #     "comment_form": comment_form
        # })


class CommentsView1(LoginRequiredMixin, View):
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        # course = get_object_or_404(Course, pk=course_id)
        # read_cookie_key = read_statistics_once_read(request, course)
        all_resources = CourseResource.objects.filter(course=course)
        course_content_type = ContentType.objects.get_for_model(course)
        all_comments = CourseComments.objects.filter(content_type=course_content_type, object_id=course.pk, parent=None)

        # data = {}
        #
        # data['content_type'] = course_content_type.model
        # data['object_id'] = course_id
        # data['reply_comment_id'] = '0'
        # comment_form = CommentForm(initial=data)
        context = {}
        context['course'] = course
        context['all_comments'] = all_comments.order_by('-add_time')
        context['comment_count'] = CourseComments.objects.filter(content_type=course_content_type, object_id=course.pk).count()
        context['all_resources'] = all_resources
        context['comment_form'] = CommentForm(initial={'content_type': course_content_type.model, 'object_id': course_id, 'reply_comment_id': 0})
        response = render(request, 'course-comment_1.html', context)
        return response


# ----------------------用户添加课程评论------------------------------------
class AddCommentsView(View):
    def post(self, request):
        comment_form = CommentForm(request.POST, user=request.user)
        data = {}
        if comment_form.is_valid():
            comment = CourseComments()
            comment.user = comment_form.cleaned_data['user']
            comment.text = comment_form.cleaned_data['text']
            comment.content_object = comment_form.cleaned_data['content_object']

            parent = comment_form.cleaned_data['parent']
            if not parent is None:
                comment.root = parent.root if not parent.root is None else parent
                comment.parent = parent
                comment.reply_to = parent.user
            comment.save()

            # 返回数据
            data['status'] = 'SUCCESS'
            data['username'] = comment.user.username
            data['comment_time'] = comment.add_time.strftime('%Y-%m-%d %H:%M:%S')
            data['text'] = comment.text
            data['image_url'] = comment.user.image.name

            if not parent is None:
                data['reply_to'] = comment.reply_to.username
                data['reply_to_image'] = comment.reply_to.image.name
            else:
                data['reply_to'] = ''
            data['pk'] = comment.pk
            data['root_pk'] = comment.root.pk if not comment.root is None else ''
        else:
            data['status'] = 'ERROR'
            data['message'] = list(comment_form.errors.values())[0][0]
        return JsonResponse(data)


# -------------------视频播放----------------------------------------
class VideoPlayView(LoginRequiredMixin, View):
    def get(self, request, video_id):
        # 此处的id为表默认为我们添加的值。
        video = Video.objects.get(id=int(video_id))
        # 找到对应的course
        course = video.lesson.course
        # 查询用户是否开始学习了该课，如果还未学习则，加入用户课程表
        user_courses = UserCourse.objects.filter(user=request.user, course=course)
        if not user_courses:
            user_course = UserCourse(user=request.user, course=course)
            user_course.save()
        # 查询课程资源
        all_resources = CourseResource.objects.filter(course=course)
        # 选出学了这门课的学生关系
        user_courses = UserCourse.objects.filter(course=course)
        # 从关系中取出user_id
        user_ids = [user_course.user_id for user_course in user_courses]
        # 这些用户学了的课程,外键会自动有id，取到字段
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [user_course.course_id for user_course in all_user_courses]
        # 获取学过该课程用户学过的其他课程
        relate_courses = Course.objects.filter(id__in=course_ids).order_by("-click_nums").exclude(id=course.id)[:4]
        # 是否收藏课程
        return render(request, "course-play.html", {
            "course": course,
            "all_resources": all_resources,
            "relate_courses": relate_courses,
            "video": video,
        })