from django.contrib import admin

from .models import Hotel, Airport, Event, Flight, Ring
from .models import HotelTrip, EventTrip, FlightTrip, TripTemplate, Trip

# Give format to the Admin Area here.

class FlightAdmin(admin.ModelAdmin):
    list_display = ('ring','flightnum','airline', 'origin','destination','takeoff','landing','price')

class HotelAdmin(admin.ModelAdmin):
    list_display = ('name','stars','continent','country','city','category','rating')

class AirportAdmin(admin.ModelAdmin):
    list_display = ('name', 'continent', 'country', 'city')

class EventAdmin(admin.ModelAdmin):
    list_display = ('name','category','continent', 'country', 'city','price')

class RingAdmin(admin.ModelAdmin):
    list_display = ('id','name','trips_in_stock', 'sold_trips')

class FlightTripAdmin(admin.ModelAdmin):
    list_display = ('id','ring','week_num','go_flight','return_flight','people','total_price')

class EventTripAdmin(admin.ModelAdmin):
    list_display = ('id', 'ring', 'total_tickets', 'total_price')

class HotelTripAdmin(admin.ModelAdmin):
    list_display = ('id', 'ring','hotelid','checkin','checkout','total_price')

class TripTemplateAdmin(admin.ModelAdmin):
    list_display = ("id", "ring","stock", "refund", "cancelled")

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "hoteltrip_id":
            kwargs["queryset"] = HotelTrip.objects.filter(ring=2)
        return super().formfield_for_foreignkey(db_field, request, **kwargs)

# Register your models here.

admin.site.register(Hotel, HotelAdmin)
admin.site.register(Airport, AirportAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(Flight, FlightAdmin)
admin.site.register(Ring, RingAdmin)

admin.site.register(TripTemplate, TripTemplateAdmin)
admin.site.register(EventTrip, EventTripAdmin)
admin.site.register(HotelTrip, HotelTripAdmin)
admin.site.register(FlightTrip, FlightTripAdmin)
admin.site.register(Trip)






