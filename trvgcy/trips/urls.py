from django.urls import path

from . import views
urlpatterns = [
    path('listing/', views.listing, name='listing'),
    path('trip/<int:trip_id>', views.trip, name='trip')
]