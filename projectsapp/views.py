from django.shortcuts import render
from .models import Project

def index(request):
    project_list = Project.objects.all()
    context = {'project_list':project_list}
    return render(request, 'projectsapp/index.html', context)