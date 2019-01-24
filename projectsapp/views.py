from django.shortcuts import render
from .models import Project, Author
from django.views import generic
from django.http import JsonResponse

import json


class IndexView(generic.ListView):
    template_name = 'projectsapp/index.html'
    context_object_name = 'project_list'

    def get_queryset(self):
        return Project.objects.all()

class AuthorDetailView(generic.DetailView):
    model = Author
    template_name = 'projectsapp/author_detail.html'

def get_project_details(request):
    id = request.GET.get('id', None)
    project = Project.objects.get(pk=id)
    project_json = {
        'id' : project.id,
        'title' : project.title,
        'authors' : project.authors_string(),
        'description' : project.description, 
        'is_school_project' : project.is_school_project,
        'picture_url' : project.picture_url
    }
    return JsonResponse(project_json)

    
