from django.urls import path

from . import views

app_name = 'trips'

urlpatterns = [
    path('listing/', views.listing, name='listing'),
<<<<<<< HEAD
    path('trip/', views.trip, name='trip')
]
=======
    path('trip/<int:trip_id>/', views.trip, name='trip'),
    path('builder/', views.builder.as_view(), name='builder')
]
>>>>>>> development
