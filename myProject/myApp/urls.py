
from django.urls import path
from . import views
from .views import CustomPasswordChangeView, password_change_done

urlpatterns = [

    path('signup/', views.register, name='signup'),
    path('login/', views.login_view, name='login'),
    path('', views.home, name='home'),
    path('logout/', views.logout_view, name='logout'),
    path('service_list/', views.service_list, name='service_list'),
    path('add_service/', views.add_service, name='add_service'),
     path('edit_service/<int:pk>/', views.edit_service, name='edit_service'),
    path('delete_service/<int:pk>/', views.delete_service, name='delete_service'),

    path('profile/', views.profile, name='profile'),
    path('edit_profile/', views.edit_profile, name='edit_profile'),

    path('staff_list/', views.staff_list, name='staff_list'),
    path('add_staff/', views.add_staff, name='add_staff'),
    path('edit_staff/<int:pk>/', views.edit_staff, name='edit_staff'),
    path('delete_staff/<int:pk>/', views.delete_staff, name='delete_staff'),

    path('notifications/', views.notification_view, name='notifications'),
    path('service_list/add_category/', views.add_category, name='add_category'),

    path('change_password/', CustomPasswordChangeView.as_view(), name='change_password'),
    path('change_password/done/', password_change_done, name='password_change_done'),
    path('', views.home_view, name='home')
]


