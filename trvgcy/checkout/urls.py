from django.urls import path

from . import views

app_name = 'checkout'

urlpatterns = [
    path('checkout/<int:trip_id>', views.checkout, name='checkout')
]
