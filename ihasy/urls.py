"""ihasy URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.urls import include, path
from rest_framework import routers

from forum import views

router = routers.DefaultRouter()
router.register(r'favorite', views.FavoriteViewSet)
router.register(r'node', views.NodeViewSet)
router.register(r'notification', views.NotificationViewSet)
router.register(r'plane', views.PlaneViewSet)
router.register(r'reply', views.ReplyViewSet)
router.register(r'topic', views.TopicViewSet)
router.register(r'transaction', views.TransactionViewSet)
router.register(r'user', views.UserViewSet)
router.register(r'vote', views.VoteViewSet)

# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
urlpatterns = [
    path('', include(router.urls)),
    path('admin/', admin.site.urls),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^static/(?P<path>.*)$', static.serve,
        {'document_root': settings.STATIC_ROOT}, name='static'),
]
