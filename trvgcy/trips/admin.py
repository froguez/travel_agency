from django.contrib import admin

from .models import Hotel, Airport, Event, Flight, Trip

# Register your models here.

admin.site.register(Hotel)
admin.site.register(Airport)
admin.site.register(Event)
admin.site.register(Flight)
admin.site.register(Trip)


