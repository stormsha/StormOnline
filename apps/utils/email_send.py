# _*_ coding: utf-8 _*_
# ---------------------------
__author__ = 'StormSha'
__date__ = '2018/3/14 15:30'
# ---------------------------

# ---------------python-------------------
from random import Random
# --------------django--------------------
from django.core.mail import send_mail, EmailMessage
# 发送html格式的邮件:
from django.template import loader
# --------------model---------------------
from users.models import EmailVerifyRecord
from StormOnline.settings import EMAIL_FROM


# --------------自定义随机函数----------------------------
def random_str(randomlength=8):
    str = ''
    chars = 'AaBbCcDdEeFeGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(randomlength):
       str += chars[random.randint(0, length)]
    return str


def send_register_email(email, send_type="register"):
    email_record = EmailVerifyRecord()
    if send_type == "update_email":
        code = random_str(4)
    else:
        code = random_str(16)
    email_record.code = code
    email_record.email = email
    email_record.send_type = send_type
    email_record.save()

    # email_title = ""
    # email_body = ""

    if send_type == "register":
        email_title = "StormSha在线网注册激活链接"
        email_body = "请点击下面的链接激活你的账号：http://127.0.0.1:8000/active/{0}".format(code)

        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass
    elif send_type == "forget":
        email_title = "StormSha在线教育网密码重置链接"
        email_body = "请点击下面的链接重置密码：http://127.0.0.1:8000/reset/{0}".format(code)

        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass
    elif send_type == "update_email":
        email_title = "StormSha慕课小站 修改邮箱验证码"
        email_body = "你的邮箱验证码为：{0}".format(code)
        # email_body = loader.render_to_string(
        #     "email_update_email.html",  # 需要渲染的html模板
        #     {
        #         "active_code": code  # 参数
        #     }
        # )
        # msg = EmailMessage(email_title, email_body, EMAIL_FROM, [email])
        # msg.content_subtype = "html"
        # send_status = msg.send()
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass

