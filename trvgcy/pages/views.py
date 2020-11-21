#from django.db import connection

from django.shortcuts import render
<<<<<<< HEAD

=======
from .models import UserAccount
from .choices import price_limit
from datetime import datetime
>>>>>>> development

from trips.models import TripTemplate, Hotel, HotelTrip
from django.db.models import Q

# Create your views here.

def index(request):
<<<<<<< HEAD

    return render(request, 'pages/index.html')
=======
    r = request.POST
    print(len(r))
    print(r)
    if len(r) == 2:
        # then it is the login POST
        pass
    elif len(r) == 5:
        # then it is the register POST

        UserAccount.objects.create(username=r['username'], password=r['password'], email=r['email'], is_active=True)

    else:
        # raise an exception becouse something went wrong
        print(" !!! ERROR, something when wrong with the login/register POST !!!")

    thetrips = TripTemplate.objects.all()

    context = {
        'thetrips': thetrips,
        'price_limit': price_limit
    }

    return render(request, 'pages/index.html', context)

def search(request):
    r = request.GET

    destination = r['destination']
    checkin = r['checkin']
    checkout = r['checkout']
    max_price = r['max_price']

    checkout = datetime.strptime(checkout, '%m/%d/%Y')
    checkin = datetime.strptime(checkin,'%m/%d/%Y')

    print("********************")
    print(checkout)

    # query = 'SELECT * FROM trips_triptemplate;'
    # cursor = connection.cursor()
    # cursor.execute(query)
    # results = cursor.fetchall() # it is a list of lists
    # cursor.close()
    # for item in results:
    #     print(item)

    results = TripTemplate.objects.filter(
        (Q(ring__continent__iexact = destination) |
        Q(ring__country__iexact = destination) |
        Q(ring__city__iexact = destination))).filter(
        basic_price__lte = max_price,
        date_to_return__lte = checkout,
        date_to_go__gte = checkin
    )

    context = {
        'results': results
        }

    return render(request, 'trips/search.html', context)
>>>>>>> development
