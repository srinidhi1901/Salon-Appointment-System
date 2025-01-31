from django import forms
from .models import UserDetails, Service
from .models import Staff
from .models import Appointment
from .models import Service
from django import forms
from .models import Category, Service

class UserDetailsForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)
    confirm_password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = UserDetails
        fields = ['username','first_name','last_name','salon_name', 'email', 'phone','gender','address','city','state','pin_code','country', 'password']

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get('password')
        confirm_password = cleaned_data.get('confirm_password')

        if password and confirm_password and password != confirm_password:
            self.add_error('confirm_password', 'Passwords do not match.')

# class ServiceForm(forms.ModelForm):
#     class Meta:
#         model = Service
#         fields = ['name', 'image', 'time_required', 'description', 'price']

class StaffForm(forms.ModelForm):
    class Meta:
        model = Staff
        fields = ['name', 'position', 'email', 'phone', 'photo']



class AppointmentForm(forms.ModelForm):
    class Meta:
        model = Appointment
        fields = ['person_name', 'time_slot', 'category', 'service_name', 'status']
        widgets = {
            'time_slot': forms.TextInput(attrs={'placeholder': 'e.g., 10:00 AM - 11:00 AM'}),
        }


class ServiceForm(forms.ModelForm):
    class Meta:
        model = Service
        fields = ['name', 'price', 'time_required']
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Service Name'}),
            'price': forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Price'}),
            'time_required': forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Time in minutes'}),
        }


class PasswordChangeForm(forms.ModelForm):
    """
    A custom password change form that adds styling and placeholders to the default fields.
    """
    old_password = forms.CharField(
        label="Old Password",
        widget=forms.PasswordInput(attrs={
            'class': 'form-control',
            'placeholder': 'Enter your old password',
        })
    )
    new_password1 = forms.CharField(
        label="New Password",
        widget=forms.PasswordInput(attrs={
            'class': 'form-control',
            'placeholder': 'Enter your new password',
        }),
        help_text="Your password must be at least 8 characters long, and cannot be entirely numeric."
    )
    new_password2 = forms.CharField(
        label="Confirm New Password",
        widget=forms.PasswordInput(attrs={
            'class': 'form-control',
            'placeholder': 'Re-enter your new password',
        })
    )



class CategoryForm(forms.ModelForm):
    class Meta:
        model = Category
        fields = ['name', 'image']


