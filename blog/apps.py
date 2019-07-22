from django.apps import AppConfig

VERBOSE_APP_NAME = u"系统管理"


class BlogConfig(AppConfig):
    name = 'blog'
    verbose_name = VERBOSE_APP_NAME
