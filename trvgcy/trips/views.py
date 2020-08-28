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
    a =TripTemplate.objects.values_list('hoteltrip_id', flat = True).get(id=trip_id)
    #a= TripTemplate.objects.get(id=trip_id).values_list('hoteltrip_id', flat = True)
    #a = thetrip.values('hoteltrip_id')
    print("*****************")
    # thetrip is a Django QuerySet, and by the way:
    # Django querysets are not JSON serializables
    print(a)
    print("*****************")
    b = HotelTrip.objects.values_list('hotelid', flat = True).get(id=a)
    # Error becouse thetrip is a Django QuerySet, entonces
    # thetrip.hoteltrip_id devuelve <'HotelTrip':9> cuando 'id'
    # lo que espera es un número entero. Y además no es subscriptable, por
    # lo que thetrip[0].... da error.

    thehotel = Hotel.objects.get(id=b)

    context = {'thetrip':thetrip, 'thehotel':thehotel}

    return render(request, "trips/trip.html", context)