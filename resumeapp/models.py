from django.db import models
from django.core.validators import MaxValueValidator, MinValueValidator

class TechnicalKnowledge(models.Model):
    name = models.CharField(max_length=50)
    strength = models.DecimalField(validators=[
            MaxValueValidator(5),
            MinValueValidator(0),
        ], 
        max_digits=2, decimal_places=1)

    def __str__(self):
        return self.name + " " + str(self.strength)


class Technology(models.Model):
    name = models.CharField(max_length=50)
    tech_type = models.CharField(max_length=100, blank=True)
    link = models.CharField(max_length=255, blank=True)

    def __str__(self):
        return self.name

    def attributes(self):
        return {'name': self.name, 'tech_type': self.tech_type, 'link': self.link}


class Project(models.Model):
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=255, blank=True)
    github_link = models.CharField(max_length=255, blank=True)
    image_url = models.CharField(max_length=255, blank=True)
    technologies = models.ManyToManyField(Technology, blank=True)

    def __str__(self):
        return self.title