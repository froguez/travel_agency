from django.shortcuts import render, get_object_or_404

from .models import TripTemplate, HotelTrip, Hotel, \
                    EventTrip, Event, Flight, Airport, \
                    Ring

def listing(request):

    thetrips = TripTemplate.objects.all()

    context = {
        'thetrips': thetrips
    }

    return render(request, 'trips/listing.html', context)

def builder(request):

    dict_display_flights = {'1':'ring', '2':'fligthnum', '3':'airline', '4':'origin',
                            '5':'destination', '6':'takeoff', '7':'landing', '8':'price'}
    dict_display_airports = {'1':'name','2':'continent','3':'country','4':'city'}

    flights = Flight.objects.all()
    events = Event.objects.all()
    airports = Airport.objects.all()
    hotels = Hotel.objects.all()
    triptemplates = TripTemplate.objects.all()
    rings = Ring.objects.all()

    context = {
        'flights': flights,
        'events': events,
        'airports': airports,
        'hotels': hotels,
        'triptemplates' : triptemplates,
        'rings' : rings,
        'dict_display_flights': dict_display_flights,
        'dict_display_airports': dict_display_airports
    }

    return render(request, 'trips/builder.html', context)

def trip(request, trip_id):

    trip = get_object_or_404(TripTemplate,pk=trip_id)

    context = {
        'trip':trip
    }

    thetrip = TripTemplate.objects.get(id=trip_id)

    a = TripTemplate.objects.values_list('hoteltrip_id', flat = True).get(id=trip_id)
    # thetrip is a Django QuerySet.
    b = HotelTrip.objects.values_list('hotelid', flat = True).get(id=a)
    thehotel = Hotel.objects.get(id=b)

    a = TripTemplate.objects.values_list('eventtrip_id', flat = True).get(id=trip_id)
    b = EventTrip.objects.values_list('eventid', flat = True).get(id=a)
    thevent = Event.objects.get(id=b)

    context = {'thetrip':thetrip, 'thehotel':thehotel, 'thevent':thevent}

    return render(request, "trips/trip.html", context)