#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/7/20 9:07
# @File    : urls.py
# @Author  : donghaixing
# Do have a faith in what you're doing.
# Make your life a story worth telling.

from django.urls import path
from . import views

urlpatterns = [
    path('', views.index),
]
