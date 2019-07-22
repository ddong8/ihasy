from django.shortcuts import render
from django.shortcuts import render_to_response


# Create your views here.

def index(request):
    return render(request, 'blog/index.html')


def page_not_found(request, exception):
    return render_to_response('blog/404.html')
