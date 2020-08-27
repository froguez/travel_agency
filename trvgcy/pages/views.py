#from django.db import connection

from django.shortcuts import render
from .models import UserAccount
from .choices import price_limit

from trips.models import TripTemplate, Hotel, HotelTrip

# Create your views here.

def index(request):
    r = request.POST
    if len(r) == 3:
        # then it is the login POST
        pass
    elif len(r) == 5:
        # then it is the register POST

        UserAccount.objects.create(username=r['username'], password=r['password'], email=r['email'], is_active=True)

    else:
        # raise an exception becouse something went wrong
        print(" !!! ERROR, something when wrong with the login/register POST !!!")

    # print(r) ## Delete, debuging purposes!!
    # print(r.json())
    print(r)
    size = len(r)
    print(size)

    context = {'price_limit': price_limit}

    return render(request, 'pages/index.html', context)

def search(request):
    r = request.GET

    destination = r['destination']
    checkin = r['checkin']
    checkout = r['checkout']
    max_price = r['max_price']

    # query = 'SELECT * FROM trips_triptemplate;'
    # cursor = connection.cursor()
    # cursor.execute(query)
    # results = cursor.fetchall() # it is a list of lists
    # cursor.close()
    # for item in results:
    #     print(item)

    results = TripTemplate.objects.filter(ring__continent__iexact = destination)

    #results = TripTemplate.objects.all()

    context = {
        'results': results
        }

    return render(request, 'trips/search.html', context)
