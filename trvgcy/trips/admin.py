from django.contrib import admin

from .models import Hotel, Airport, Event, Flight, Trip, Ring

# Give format to the Admin Area here.

class FlightAdmin(admin.ModelAdmin):
    list_display = ('flightnum','airline', 'origin','destination','takeoff','landing','price')

class HotelAdmin(admin.ModelAdmin):
    list_display = ('name','stars','continent','country','city','category','rating')

class AirportAdmin(admin.ModelAdmin):
    list_display = ('name', 'continent', 'country', 'city')

class EventAdmin(admin.ModelAdmin):
    list_display = ('name','category','continent', 'country', 'city','price')

class RingAdmin(admin.ModelAdmin):
    list_display = ('id','name','trips_in_stock', 'sold_trips')

# Register your models here.

admin.site.register(Hotel, HotelAdmin)
admin.site.register(Airport, AirportAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(Flight, FlightAdmin)
admin.site.register(Trip)
admin.site.register(Ring, RingAdmin)


