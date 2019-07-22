from django import forms
from django.contrib import admin
from django.utils.translation import ugettext_lazy as _

from .models import Article, File


# Register your models here.

class ArticleListFilter(admin.SimpleListFilter):
    title = _("是否显示")
    parameter_name = 'is_enable'

    def lookups(self, request, model_admin):
        pass

    def queryset(self, request, queryset):
        pass


class ArticleForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = '__all__'


def mark_article_publish(modeladmin, request, queryset):
    queryset.update(is_enable=True)


def draft_article(modeladmin, request, queryset):
    queryset.update(is_enable=False)


mark_article_publish.short_description = '发布选中文章'
draft_article.short_description = '选中文章设置为草稿'


class ArticleAdmin(admin.ModelAdmin):
    list_per_page = 20
    search_fields = ('body', 'title')
    form = ArticleForm
    list_display = ('id', 'title', 'body', 'created_time', 'last_mod_time', 'is_enable')
    list_display_links = ('id', 'title')
    list_filter = (ArticleListFilter, 'is_enable')
    exclude = ('created_time', 'last_mod_time')
    view_on_site = True
    actions = [mark_article_publish, draft_article]

    def get_form(self, request, obj=None, **kwargs):
        form = super(ArticleAdmin, self).get_form(request, obj, **kwargs)
        return form

    def save_model(self, request, obj, form, change):
        super(ArticleAdmin, self).save_model(request, obj, form, change)


class FileAdmin(admin.ModelAdmin):
    list_per_page = 20
    exclude = ('created_time', 'last_mod_time')
    list_display = ('file', 'name', 'created_time', 'last_mod_time')


admin.site.register(Article, ArticleAdmin)
admin.site.register(File, FileAdmin)

admin.site.site_title = "IHASY系统管理后台"
admin.site.site_header = "IHASY系统后台"
