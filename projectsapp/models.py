from django.db import models

class Author(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)    
    biography = models.CharField(max_length=255)

class Project(models.Model):
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=255)
    authors = models.ManyToManyField(Author)
    github_link = models.CharField(max_length=255)