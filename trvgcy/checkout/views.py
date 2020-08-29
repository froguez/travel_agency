from django.shortcuts import render

# Create your views here.

def checkout(request,trip_id):
    return render(request, 'checkout/checkout.html')