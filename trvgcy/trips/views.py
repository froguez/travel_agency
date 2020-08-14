from django.shortcuts import render, get_object_or_404
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator

from .models import TripTemplate

# Create your views here.

def listing(request):
def trip(request, trip_id):
    return render(request, "trips/trip.html")