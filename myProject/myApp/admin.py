from django.contrib import admin

from .models import Service
admin.site.register(Service)
# Register your models here.

# admin.py
from .models import Appointment
admin.site.register(Appointment)
