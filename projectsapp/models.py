from django.db import models

class Project(models.Model):
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=255, blank=True)
    github_link = models.CharField(max_length=255, blank=True)
    image_url = models.CharField(max_length=255, blank=True)

    def __str__(self):
        return self.title
            
    def fields(self):
        return [f.name.replace("_", " ").title() for f in self._meta.get_fields()]
