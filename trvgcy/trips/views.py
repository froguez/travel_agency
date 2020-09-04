from django.core.paginator import Paginator
from django.views.generic import View
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

class builder(View):
# The get method of the builder view, will just rend to the user the builder.html template.
    def get(self,request):

        dict_display_flights = {'1':'ring', '2':'fligthnum', '3':'airline', '4':'origin',
                                '5':'destination', '6':'takeoff', '7':'landing', '8':'price'}
        dict_display_airports = {'1':'name','2':'continent','3':'country','4':'city'}
        dict_display_hotels = {'1':'name','2':'stars','3':'continent','4':'country',
                               '5':'city','6':'category','7':'rating'}
        dict_display_event = {'1':'name', '2':'category', '3':'ring_id','4':'price'}
        dict_display_ring = {'1':'name', '2':'trips_in_stock', '3':'sold_trips'}
        dict_display_triptemplate = {'1':'comercial_reference', '2':'ring', '3':'basic_price',
                                     '4':'stock', '5':'sold'}

        flights = Flight.objects.all().order_by('-id')
        events = Event.objects.all().order_by('-id')
        airports = Airport.objects.all().order_by('-id')
        hotels = Hotel.objects.all().order_by('-id')
        triptemplates = TripTemplate.objects.all().order_by('-id')
        rings = Ring.objects.all().order_by('-id')

        context = {
            'flights': flights,
            'events': events,
            'airports': airports,
            'hotels': hotels,
            'triptemplates' : triptemplates,
            'rings' : rings,
            'dict_display_flights': dict_display_flights,
            'dict_display_airports': dict_display_airports,
            'dict_display_hotels': dict_display_hotels,
            'dict_display_event': dict_display_event,
            'dict_display_ring': dict_display_ring,
            'dict_display_triptemplate': dict_display_triptemplate,
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