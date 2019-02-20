from django.contrib import admin

from .models import Project, Technology, TechnicalKnowledge

admin.site.register(Project)
admin.site.register(Technology)
admin.site.register(TechnicalKnowledge)
