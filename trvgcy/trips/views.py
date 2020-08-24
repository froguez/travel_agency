from django.shortcuts import render, get_object_or_404

from .models import TripTemplate

# Connecting to postgres

#conn = psycopg2.connect(
#    host="localhost",
#    database="suppliers",
#    user="postgres",
#    password="Abcd1234")

def listing(request):

    thetrips = TripTemplate.objects.all()
    context = {
        'thetrips': thetrips
    }

    return render(request, 'trips/listing.html', context)



def trip(request, trip_id):

    trip = get_object_or_404(TripTemplate,pk=trip_id)

    context = {
        'trip':trip
    }

    thetrip = TripTemplate.objects.get(id=trip_id)

    context = {'thetrip':thetrip}

    return render(request, "trips/trip.html", context)