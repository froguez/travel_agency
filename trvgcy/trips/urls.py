from django.urls import path

from . import views

app_name = 'trips'

urlpatterns = [
    path('search/', views.search, name='search'),
    path('listing/', views.listing, name='listing'),
    path('trip/<int:trip_id>/', views.trip, name='trip')
]
