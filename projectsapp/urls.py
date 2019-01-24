from django.urls import path

from . import views

app_name = 'projectsapp'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    path('projectdetails', views.get_project_details, name="project_details"), 
    path('authors/<int:pk>/', views.AuthorDetailView.as_view(), name='author_detail')
]