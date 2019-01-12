from django.db import models

class Author(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)    
    biography = models.CharField(max_length=255, blank=True)

    def __str__(self):
        return self.first_name + " " + self.last_name

class Project(models.Model):
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=255, blank=True)
    authors = models.ManyToManyField(Author, blank=True)
    github_link = models.CharField(max_length=255, blank=True)
    is_school_project = models.BooleanField(default=False)
    picture_url = models.CharField(max_length=255, blank=True)

    def __str__(self):
        return self.title

    def authors_string(self):
        return ', '.join([author.__str__() for author in self.authors.all()])
            