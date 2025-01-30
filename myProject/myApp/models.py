from django.contrib.auth.models import AbstractUser
from django.db import models

class UserDetails(AbstractUser):
    salon_name = models.CharField(max_length=100, blank=True)
    phone = models.CharField(max_length=15, blank=True)
    gender = models.CharField(max_length=10, choices=[('Male', 'Male'), ('Female', 'Female'), ('Other', 'Other')], blank=True)
    address = models.CharField(max_length=255, blank=True)
    city = models.CharField(max_length=100, blank=True)
    state = models.CharField(max_length=100, blank=True)
    pin_code = models.CharField(max_length=6, blank=True)
    country = models.CharField(max_length=100, blank=True)

    def __str__(self):
        return self.username


class Service(models.Model):
    name = models.CharField(max_length=100)
    image = models.ImageField(upload_to='services/')
    time_required = models.DurationField(help_text="Enter the time in hours and minutes.")
    description = models.TextField(blank=True, null=True)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    
    def __str__(self):
        return self.name
    

class Staff(models.Model):
    name = models.CharField(max_length=100)
    position = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=15)
    photo = models.ImageField(upload_to='staff_photos/', blank=True, null=True)

    def __str__(self):
        return self.name


class Appointment(models.Model):
    person_name = models.CharField(max_length=100)
    time_slot = models.CharField(max_length=50)
    category = models.CharField(max_length=100)
    service_name = models.CharField(max_length=100)
    status = models.CharField(max_length=50)

    def __str__(self):
        return self.person_name


class Category(models.Model):
    name = models.CharField(max_length=100, unique=True)
    image = models.ImageField(upload_to='categories/', null=True, blank=True)

    def __str__(self):
        return self.name
    



