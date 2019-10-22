from rest_framework import viewsets

from forum import models
from forum import serializers


class FavoriteViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows favorite to be viewed or edited.
    """
    queryset = models.Favorite.objects.all().order_by('owner_user_id')
    serializer_class = serializers.FavoriteSerializer


class NodeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows node to be viewed or edited.
    """
    queryset = models.Node.objects.all().order_by('name')
    serializer_class = serializers.NodeSerializer


class NotificationViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows notification to be viewed or edited.
    """
    queryset = models.Notification.objects.all().order_by('involved_topic_id')
    serializer_class = serializers.NotificationSerializer


class PlaneViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows plane to be viewed or edited.
    """
    queryset = models.Plane.objects.all().order_by('name')
    serializer_class = serializers.PlaneSerializer


class ReplyViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows reply to be viewed or edited.
    """
    queryset = models.Reply.objects.all().order_by('topic_id')
    serializer_class = serializers.ReplySerializer


class TopicViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows topic to be viewed or edited.
    """
    queryset = models.Topic.objects.all().order_by('node_id')
    serializer_class = serializers.TopicSerializer


class TransactionViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows transaction to be viewed or edited.
    """
    queryset = models.Transaction.objects.all().order_by('user_id')
    serializer_class = serializers.TransactionSerializer


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows user to be viewed or edited.
    """
    queryset = models.User.objects.all().order_by('uid')
    serializer_class = serializers.UserSerializer


class VoteViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows vote to be viewed or edited.
    """
    queryset = models.Vote.objects.all().order_by('involved_topic_id')
    serializer_class = serializers.VoteSerializer
