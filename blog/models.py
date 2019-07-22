from django.db import models
from django.utils.timezone import now

from ihasy import settings


# Create your models here.

class Article(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.TextField('标题', max_length=50)
    body = models.TextField('正文')
    created_time = models.DateTimeField('创建时间', default=now)
    last_mod_time = models.DateTimeField('修改时间', default=now)
    is_enable = models.BooleanField('是否展示', default=True, blank=False, null=False)

    class Meta:
        ordering = ['-created_time']
        verbose_name = "通知公告"
        verbose_name_plural = verbose_name
        get_latest_by = 'created_time'

    def __str__(self):
        return self.body

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)


class File(models.Model):
    id = models.AutoField(primary_key=True)
    file = models.FileField(upload_to=settings.FILE_URL, verbose_name="文件路径")
    name = models.CharField(max_length=200, blank=True, verbose_name="文件名称")
    created_time = models.DateTimeField('创建时间', default=now)
    last_mod_time = models.DateTimeField('修改时间', default=now)

    class Meta:
        ordering = ['-created_time']
        verbose_name = "上传文件"
        verbose_name_plural = verbose_name
        get_latest_by = 'created_time'

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        self.name = self.file.name
        super().save(*args, **kwargs)
