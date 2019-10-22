#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/10/22 15:17
# @File    : serializers.py
# @Author  : donghaixing
# Do have a faith in what you're doing.
# Make your life a story worth telling.

from rest_framework import serializers

from forum import models


class FavoriteSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Favorite
        fields = '__all__'


class NodeSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Node
        fields = '__all__'


class NotificationSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Notification
        fields = '__all__'


class PlaneSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Plane
        fields = '__all__'


class ReplySerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Reply
        fields = '__all__'


class TopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Topic
        fields = '__all__'


class TransactionSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Transaction
        fields = '__all__'


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.User
        fields = '__all__'


class VoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Vote
        fields = '__all__'
