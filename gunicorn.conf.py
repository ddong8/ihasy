#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/9/24 13:47
# @File    : gunicorn.conf.py
# @Author  : donghaixing
# Do have a faith in what you're doing.
# Make your life a story worth telling.

import multiprocessing

bind = "0.0.0.0:8000"  # 绑定的ip与端口
workers = multiprocessing.cpu_count() * 2 + 1  # 核心数
timeout = 300  # 过期时间
errorlog = '/apps/ihasy/logs/gunicorn.error.log'  # 发生错误时log的路径
accesslog = '/apps/ihasy/logs/gunicorn.access.log'  # 正常时的log路径
loglevel = 'warning'  # 日志等级
proc_name = 'ihasy'  # 进程名
