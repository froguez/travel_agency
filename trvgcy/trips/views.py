from django.shortcuts import render

from .models import TripTemplate

# Create your views here.

def listing(request):

    thetrips = TripTemplate.objects.all()
    context = {
        'thetrips': thetrips
    }

    return render(request, 'trips/listing.html', context)

def trip(request):

    thetrip = TripTemplate.objects.get(id='1')

    context = {'thetrip':thetrip}

    return render(request, "trips/trip.html", context)