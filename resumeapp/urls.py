from django.urls import path

from . import views

app_name = 'resumeapp'
urlpatterns = [
    path('', views.IndexView, name='index'),
    path('projectdetails', views.GetProjectDetails, name="project_details"), 
]