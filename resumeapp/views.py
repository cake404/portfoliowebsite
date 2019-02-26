from django.shortcuts import render
from .models import Project, TechnicalKnowledge
from django.views import generic
from django.http import JsonResponse

import json


def IndexView(request):
    project_list = Project.objects.order_by('id').reverse()
    tech_know_list = TechnicalKnowledge.objects.order_by('strength').reverse()

    return render(request, 'resumeapp/index.html', {'project_list': project_list, 
    'tech_know_list': tech_know_list, 'rating_range': [0.0, 1.0, 2.0, 3.0, 4.0]})

def GetProjectDetails(request):
    id = request.GET.get('id', None)
    project = Project.objects.get(pk=id)
    project_json = {
        'id' : project.id,
        'title' : project.title,
        'description' : project.description, 
        'image_url' : project.image_url,
        'github_link' : project.github_link,
        'technologies' : [tech.attributes() for tech in project.technologies.all()]
    }
    return JsonResponse(project_json)

    
