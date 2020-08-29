from django.shortcuts import render, get_object_or_404

from .models import TripTemplate, HotelTrip, Hotel, EventTrip, Event

def listing(request):

    thetrips = TripTemplate.objects.all()

    for item in thetrips:
        print(item)

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

    a = TripTemplate.objects.values_list('hoteltrip_id', flat = True).get(id=trip_id)
    # thetrip is a Django QuerySet.
    b = HotelTrip.objects.values_list('hotelid', flat = True).get(id=a)
    thehotel = Hotel.objects.get(id=b)

    a = TripTemplate.objects.values_list('eventtrip_id', flat = True).get(id=trip_id)
    b = EventTrip.objects.values_list('eventid', flat = True).get(id=a)
    thevent = Event.objects.get(id=b)
    context = {'thetrip':thetrip, 'thehotel':thehotel, 'thevent':thevent}

    return render(request, "trips/trip.html", context)