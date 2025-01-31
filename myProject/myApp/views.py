
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.http import HttpResponse
from django.contrib.auth.hashers import make_password
from .forms import UserDetailsForm, ServiceForm, StaffForm
from .models import Service, UserDetails, Staff
from .models import Appointment
from .models import Category
from django.contrib.auth.views import PasswordChangeView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib import messages
from django.shortcuts import render, redirect, get_object_or_404
from django.http import JsonResponse
from .models import Category, Service
from .forms import CategoryForm, ServiceForm

# User Registration
def register(request):
    if request.method == "POST":
        form = UserDetailsForm(request.POST)
        if form.is_valid():
            pasword = form.save(commit=False)
            pasword.password = make_password(form.cleaned_data['password'])
            pasword.save()
            messages.success(request, "Account created successfully! Please log in.")
            return redirect('login')  # Redirect to login page
        else:
            messages.error(request, "There were errors in your form. Please try again.")
    else:
        form = UserDetailsForm()
    return render(request, "myApp/signup.html", {"form": form})

# User Login
def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            # Store session data
            request.session['user_id'] = user.id
            request.session['username'] = user.username
            messages.success(request, 'Successfully logged in!')
            return redirect('home')
        else:
            messages.error(request, 'Invalid username or password')
    return render(request, 'myApp/login.html')

# User Logout
def logout_view(request):
    # Clear the session data
    request.session.flush()
    logout(request)
    messages.success(request, 'Successfully logged out!')
    return redirect('login')

# Home Page
def home(request):
    username = request.session.get('username')  # Default to 'Guest' if no session data
    return render(request, 'myApp/home.html', {'username': username})

# Service List
@login_required
def service_list(request):
    if 'username' not in request.session:
        messages.error(request, 'Your session has expired. Please log in again.')
        return redirect('login')

    services = Service.objects.all()
    return render(request, 'myApp/service_list.html', {
        'services': services,
        'username': request.session.get('username'),
    })

# Add Service
@login_required
def add_service(request):
    if request.method == 'POST':
        form = ServiceForm(request.POST, request.FILES)
        if form.is_valid():
            service = form.save(commit=False)
            service.created_by = request.user  # Assuming you track the user who adds the service
            service.save()
            messages.success(request, "Service added successfully!")
            return redirect('service_list')
        else:
            messages.error(request, "There were errors with the service form. Please try again.")
    else:
        form = ServiceForm()
    return render(request, 'myApp/add_service.html', {'form': form, 'username': request.session.get('username')})

# Edit Service
@login_required
def edit_service(request, pk):
    service = get_object_or_404(Service, pk=pk)
    if request.method == 'POST':
        form = ServiceForm(request.POST, request.FILES, instance=service)
        if form.is_valid():
            form.save()
            messages.success(request, "Service updated successfully!")
            return redirect('service_list')
    else:
        form = ServiceForm(instance=service)
    return render(request, 'myApp/edit_service.html', {'form': form, 'service': service})

# Delete Service
@login_required
def delete_service(request, pk):
    service = get_object_or_404(Service, pk=pk)
    if request.method == 'POST':
        service.delete()
        messages.success(request, "Service deleted successfully!")
        return redirect('service_list')
    return render(request, 'myApp/delete_service.html', {'service': service})

# User Profile
@login_required
def profile(request):
    user_id = request.session.get('user_id')
    user = get_object_or_404(UserDetails, id=user_id)
    return render(request, 'myApp/profile.html', {'user': user, 'username': request.session.get('username'),})

# Edit Profile
@login_required
def edit_profile(request):
    user = request.user  # Get the currently logged-in user
    if request.method == 'POST':
        form = UserDetailsForm(request.POST, instance=user)
        if form.is_valid():
            form.save()
            messages.success(request, "Profile updated successfully!")
            return redirect('profile')
    else:
        form = UserDetailsForm(instance=user)
    return render(request, 'myApp/edit_profile.html', {'form': form})

# Staff List
@login_required
def staff_list(request):
    staff_members = Staff.objects.all()
    return render(request, 'myApp/staff_list.html', {'staff_members': staff_members, 'username': request.session.get('username'),})

# Add Staff
@login_required
def add_staff(request):
    if request.method == 'POST':
        form = StaffForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, "Staff added successfully!")
            return redirect('staff_list')
    else:
        form = StaffForm()
    return render(request, 'myApp/add_staff.html', {'form': form})

# Edit Staff
@login_required
def edit_staff(request, pk):
    staff = get_object_or_404(Staff, pk=pk)
    if request.method == 'POST':
        form = StaffForm(request.POST, request.FILES, instance=staff)
        if form.is_valid():
            form.save()
            messages.success(request, "Staff details updated successfully!")
            return redirect('staff_list')
    else:
        form = StaffForm(instance=staff)
    return render(request, 'myApp/add_staff.html', {'form': form})

# Delete Staff
@login_required
def delete_staff(request, pk):
    staff = get_object_or_404(Staff, pk=pk)
    staff.delete()
    messages.success(request, "Staff member deleted successfully!")
    return redirect('staff_list')

# Set Session Data
def set_session(request):
    request.session['user_name'] = 'John Doe'
    request.session['is_logged_in'] = True
    return HttpResponse("Session data set!")

# Get Session Data
def get_session(request):
    user_name = request.session.get('user_name', 'Guest')
    is_logged_in = request.session.get('is_logged_in', False)
    return HttpResponse(f"Hello {user_name}, Logged in: {is_logged_in}")


def notification_view(request):
    """
    View to display all appointments in the notification.html page.
    """
    # Fetch all appointments from the database
    appointments = Appointment.objects.all()
    return render(request, 'myApp/notifications.html', {'appointments': appointments})

def add_category(request):
    categories = Category.objects.all()
    return render(request, 'myApp/add_category.html', {'categories': categories})


class CustomPasswordChangeView(LoginRequiredMixin, PasswordChangeView):
    template_name = 'myApp/change_password.html'  # Path to the HTML template
    success_url = reverse_lazy('password_change_done')  # Redirect after successful password change

    def form_valid(self, form):
        messages.success(self.request, "Your password has been successfully updated!")
        return super().form_valid(form)

# For rendering a success confirmation page after password change
def password_change_done(request):
    return render(request, 'myApp/change_password.html', {})


def home_view(request):
    return render(request, 'home.html')




def manage_services(request):
    categories = Category.objects.prefetch_related('services').all()
    category_form = CategoryForm()
    service_form = ServiceForm()
    return render(request, 'manage_services.html', {'categories': categories, 'category_form': category_form, 'service_form': service_form})

def add_category(request):
    if request.method == 'POST':
        form = CategoryForm(request.POST, request.FILES)
        if form.is_valid():
            category = form.save()
            return JsonResponse({'id': category.id, 'name': category.name, 'image_url': category.image.url if category.image else ''})
    return JsonResponse({'error': 'Invalid data'}, status=400)

def add_service(request):
    if request.method == 'POST':
        form = ServiceForm(request.POST)
        if form.is_valid():
            service = form.save()
            return JsonResponse({'id': service.id, 'name': service.name, 'time': service.time, 'cost': str(service.cost), 'category_id': service.category.id})
    return JsonResponse({'error': 'Invalid data'}, status=400)

def delete_category(request, category_id):
    category = get_object_or_404(Category, id=category_id)
    category.delete()
    return JsonResponse({'message': 'Category deleted'})

def delete_service(request, service_id):
    service = get_object_or_404(Service, id=service_id)
    service.delete()
    return JsonResponse({'message': 'Service deleted'})


