from django.contrib import admin

from .models import Service
admin.site.register(Service)

from .models import Appointment
admin.site.register(Appointment)

from .models import Category
admin.site.register(Category)