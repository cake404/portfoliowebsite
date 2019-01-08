from django.contrib import admin

from .models import Author
from .models import Project

admin.site.register(Author)
admin.site.register(Project)
