from django.shortcuts import render, get_object_or_404

from .models import TripTemplate, HotelTrip, Hotel

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
    print("*****************")
    # thetrip is a Django QuerySet (JSON)
    print(thetrip.hoteltrip_id)
    print("*****************")
    thehoteltrip = HotelTrip.objects.get(id=thetrip.hoteltrip_id)
    # Error becouse thetrip is a Django QuerySet (JSON), entonces
    # thetrip.hoteltrip_id devuelve <HotelTrip:9> cuando 'id'
    # lo que espera es un número entero.
    thehotel = Hotel.objects.get(id=thehoteltrip.hotelid)



    context = {'thetrip':thetrip}

    return render(request, "trips/trip.html", context)