#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/10/22 15:29
# @File    : serializers.py
# @Author  : donghaixing
# Do have a faith in what you're doing.
# Make your life a story worth telling.

from django.db import models


class Favorite(models.Model):
    owner_user_id = models.IntegerField(blank=True, null=True)
    involved_type = models.IntegerField(blank=True, null=True)
    involved_topic_id = models.IntegerField(blank=True, null=True)
    involved_reply_id = models.IntegerField(blank=True, null=True)
    created = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'favorite'


class Node(models.Model):
    name = models.TextField(blank=True, null=True)
    slug = models.TextField(blank=True, null=True)
    thumb = models.TextField(blank=True, null=True)
    introduction = models.TextField(blank=True, null=True)
    created = models.TextField(blank=True, null=True)
    updated = models.TextField(blank=True, null=True)
    plane_id = models.IntegerField(blank=True, null=True)
    topic_count = models.IntegerField(blank=True, null=True)
    custom_style = models.TextField(blank=True, null=True)
    limit_reputation = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'node'


class Notification(models.Model):
    content = models.TextField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    involved_type = models.IntegerField(blank=True, null=True)
    involved_user_id = models.IntegerField(blank=True, null=True)
    involved_topic_id = models.IntegerField(blank=True, null=True)
    involved_reply_id = models.IntegerField(blank=True, null=True)
    trigger_user_id = models.IntegerField(blank=True, null=True)
    occurrence_time = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'notification'


class Plane(models.Model):
    name = models.TextField(blank=True, null=True)
    created = models.TextField(blank=True, null=True)
    updated = models.TextField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'plane'


class Reply(models.Model):
    topic_id = models.IntegerField(blank=True, null=True)
    author_id = models.IntegerField(blank=True, null=True)
    content = models.TextField(blank=True, null=True)
    created = models.DateTimeField(blank=True, null=True)
    updated = models.DateTimeField(blank=True, null=True)
    up_vote = models.IntegerField(blank=True, null=True)
    down_vote = models.IntegerField(blank=True, null=True)
    last_touched = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'reply'


class Topic(models.Model):
    title = models.TextField(blank=True, null=True)
    content = models.TextField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    hits = models.IntegerField(blank=True, null=True)
    created = models.DateTimeField(blank=True, null=True)
    updated = models.DateTimeField(blank=True, null=True)
    node_id = models.IntegerField(blank=True, null=True)
    author_id = models.IntegerField(blank=True, null=True)
    reply_count = models.IntegerField(blank=True, null=True)
    last_replied_by = models.TextField(blank=True, null=True)
    last_replied_time = models.DateTimeField(blank=True, null=True)
    up_vote = models.IntegerField(blank=True, null=True)
    down_vote = models.IntegerField(blank=True, null=True)
    last_touched = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'topic'


class Transaction(models.Model):
    type = models.IntegerField(blank=True, null=True)
    reward = models.IntegerField(blank=True, null=True)
    user_id = models.IntegerField(blank=True, null=True)
    current_balance = models.IntegerField(blank=True, null=True)
    involved_user_id = models.IntegerField(blank=True, null=True)
    involved_topic_id = models.IntegerField(blank=True, null=True)
    involved_reply_id = models.IntegerField(blank=True, null=True)
    occurrence_time = models.TextField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'transaction'


class User(models.Model):
    uid = models.AutoField(primary_key=True)
    email = models.TextField(blank=True, null=True)
    password = models.TextField(blank=True, null=True)
    username = models.TextField(blank=True, null=True)
    nickname = models.TextField(blank=True, null=True)
    avatar = models.TextField(blank=True, null=True)
    signature = models.TextField(blank=True, null=True)
    location = models.TextField(blank=True, null=True)
    website = models.TextField(blank=True, null=True)
    company = models.TextField(blank=True, null=True)
    role = models.IntegerField(blank=True, null=True)
    balance = models.IntegerField(blank=True, null=True)
    reputation = models.IntegerField(blank=True, null=True)
    self_intro = models.TextField(blank=True, null=True)
    created = models.DateTimeField(blank=True, null=True)
    updated = models.DateTimeField(blank=True, null=True)
    twitter = models.TextField(blank=True, null=True)
    github = models.TextField(blank=True, null=True)
    douban = models.TextField(blank=True, null=True)
    last_login = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'user'


class Vote(models.Model):
    status = models.IntegerField(blank=True, null=True)
    involved_type = models.IntegerField(blank=True, null=True)
    involved_user_id = models.IntegerField(blank=True, null=True)
    involved_topic_id = models.IntegerField(blank=True, null=True)
    involved_reply_id = models.IntegerField(blank=True, null=True)
    trigger_user_id = models.IntegerField(blank=True, null=True)
    occurrence_time = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'vote'
