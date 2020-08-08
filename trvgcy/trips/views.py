from django.shortcuts import render

# Create your views here.

def listing(request):
    print(request.POST) ## Delete, debuging purposes!!
    return render(request, 'trips/listing.html')

def trip(request):
    return render(request, 'trips/trip.html')