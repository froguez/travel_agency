from django.db import models
from django.core.validators import MaxValueValidator, MinValueValidator

# Create your models here.

class Ring(models.Model):

    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=40, unique=True, default=False)
    trips_in_stock = models.IntegerField(default='0')
    sold_trips = models.IntegerField(default='0')
    city = models.CharField(max_length=80, null = True)
    country = models.CharField(max_length=80, null=True)
    continent = models.CharField(max_length=30, null=True)

    def __str__(self):
        return self.name

class Hotel(models.Model):
    # Fields

    id = models.AutoField(primary_key=True)
    ring = models.ForeignKey(Ring, on_delete=models.CASCADE)
    name = models.CharField(max_length=40, unique=True)
    chain = models.CharField(max_length=30)
    stars = models.CharField(max_length=2)  # '5+'
    category = models.CharField(max_length=30, blank = True)
    email = models.EmailField(max_length=40)
    telephone = models.CharField(max_length=15)
    is_partner = models.BooleanField(default=False)
    is_active = models.BooleanField(default=False)
    continent = models.CharField(max_length=15, default = False)
    country = models.CharField(max_length=15, default = False)
    city = models.CharField(max_length=30, default = False)
    postalcode = models.CharField(max_length=15, default = '00000')
    street = models.CharField(max_length=40, default = '00000')
    num = models.CharField(max_length=15, default = '00000')
    coordinates = models.CharField(max_length=15, blank=True)
    has_parking = models.BooleanField(default=False)
    parking_price = models.DecimalField(max_digits=4, decimal_places=2, default = False)
    has_swimingpool = models.BooleanField(default=False)
    has_gym = models.BooleanField(default=False)
    has_spa = models.BooleanField(default=False)
    spa_price = models.DecimalField(max_digits=4, decimal_places=2, default = False)
    has_kindergarden = models.BooleanField(default=False)
    kindergarden_price = models.DecimalField(max_digits=4, decimal_places=2, default = False)
    has_single_room = models.BooleanField(default=False)
    singleR_price = models.DecimalField(max_digits=5, decimal_places=2, default = False)
    has_double_room = models.BooleanField(default=False)
    doubleR_price = models.DecimalField(max_digits=5, decimal_places=2, default = False)
    has_suite = models.BooleanField(default=False)
    suite_price = models.DecimalField(max_digits=5, decimal_places=2, default = False)
    has_cooking_24h = models.BooleanField(default=False)
    has_checkin_24h = models.BooleanField(default=False)
    has_all_inclusive = models.BooleanField(default=False)
    all_inclusive_price = models.DecimalField(max_digits=5, decimal_places=2, default = False)
    has_half_board = models.BooleanField(default=False)
    half_board_price = models.DecimalField(max_digits=5, decimal_places=2, default = False)
    has_full_board = models.BooleanField(default=False)
    full_board_price = models.DecimalField(max_digits=5, decimal_places=2, default = False)
    has_only_breakfast = models.BooleanField(default=False)
    breakfast_price = models.DecimalField(max_digits=4, decimal_places=2, default = False)
    allow_pet = models.BooleanField(default=False)
    rating = models.CharField(max_length=2, blank = True)  # '10'
    rating_business = models.CharField(max_length=2, blank = True)  # '10'
    rating_family = models.CharField(max_length=2, blank = True)  # '10'
    rating_single = models.CharField(max_length=2, blank = True)  # '10'
    rating_couples = models.CharField(max_length=2, blank = True)  # '10'
    rating_pet = models.CharField(max_length=2, blank = True)  # '10'
    photo_main = models.ImageField(upload_to='photos/Hotels/%Y/%m/%d/', null=True)
    photo1 = models.ImageField(upload_to='photos/Hotels/%Y/%m/%d/', null=True)
    photo2 = models.ImageField(upload_to='photos/Hotels/%Y/%m/%d/', null=True)

    # Metadata

    # Methods

    def __str__(self):
        return self.name

class Airport(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=40)
    continent = models.CharField(max_length=15, default = False)
    country = models.CharField(max_length=15, default = False)
    city = models.CharField(max_length=30, default = False)
    postalcode = models.CharField(max_length=15, default = '00000')
    street = models.CharField(max_length=40, default = '00000')
    num = models.CharField(max_length=15, default = '00000')
    coordinates = models.CharField(max_length=15, blank=True)

    def __str__(self):
        return self.name

class Flight(models.Model):
    id = models.AutoField(primary_key=True)
    ring = models.ForeignKey(Ring, on_delete=models.CASCADE, default=False)
    origin = models.ForeignKey(Airport, on_delete = models.CASCADE, default = False)
    destination = models.ForeignKey(Airport, related_name='+', on_delete = models.CASCADE, default = False)
    airline = models.CharField(max_length=18)
    flightnum = models.CharField(max_length=10, default=None)
    takeoff = models.DateTimeField()
    landing = models.DateTimeField()
    price = models.DecimalField(max_digits=5, decimal_places=2, default = False)
    is_active = models.BooleanField(default=False)

    def __str__(self):
        return self.flightnum

class Event(models.Model):
    id = models.AutoField(primary_key=True)
    ring_id = models.ForeignKey(Ring, on_delete=models.CASCADE, default= False)
    name = models.CharField(max_length=40, unique = True)
    category = models.CharField(max_length=30)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    is_active = models.BooleanField(default=False)
    continent = models.CharField(max_length=15, default = False)
    country = models.CharField(max_length=15, default = False)
    city = models.CharField(max_length=30, default = False)
    postalcode = models.CharField(max_length=15, default = '00000')
    street = models.CharField(max_length=40, default = '00000')
    num = models.CharField(max_length=15, default = '00000')
    coordinates = models.CharField(max_length=15, blank=True)
    photo_main = models.ImageField(upload_to='photos/Events/%Y/%m/%d/', null=True)
    photo1 = models.ImageField(upload_to='photos/Events/%Y/%m/%d/', null=True)
    photo2 = models.ImageField(upload_to='photos/Events/%Y/%m/%d/', null=True)

    def __str__(self):
        return self.name

class EventTrip(models.Model):
    id = models.AutoField(primary_key = True)
    ring = models.ForeignKey(Ring, on_delete = models.CASCADE, null = True, blank = True)
    eventid = models.ForeignKey(Event, on_delete=models.CASCADE, default = False)
    total_tickets = models.IntegerField(default = False)
    total_price = models.DecimalField(max_digits=6, decimal_places=2, default = False)

    def __str__(self):
        return str(self.id)

class FlightTrip(models.Model):
    id = models.AutoField(primary_key = True)
    ring = models.ForeignKey(Ring, on_delete = models.CASCADE, default = False)
    go_flight = models.ForeignKey(Flight, on_delete = models.CASCADE, default = False)
    return_flight = models.ForeignKey(Flight, related_name= "+", on_delete=models.CASCADE, default = False)
    week_num = models.IntegerField(
        default = 0,
        validators=[
            MaxValueValidator(53),
            MinValueValidator(0)
            ]
        )
    people = models.IntegerField(default = False)
    total_price = models.DecimalField(max_digits=6, decimal_places=2, default = False)

    def __str__(self):
        return str(self.id)

class HotelTrip(models.Model):
    id = models.AutoField(primary_key = True)
    ring = models.ForeignKey(Ring, on_delete=models.CASCADE, default = False)
    hotelid = models.ForeignKey(Hotel, on_delete=models.CASCADE, default = False)
    checkin = models.DateTimeField(default=False)
    checkout = models.DateTimeField(default=False)
    number_of_single_rooms = models.IntegerField(default=False)
    number_of_double_rooms = models.IntegerField(default=False)
    number_of_suites = models.IntegerField(default=False)
    parking_slots = models.IntegerField(default=False)
    spa_tickets = models.IntegerField(default=False)
    total_kindergarden_tickets = models.IntegerField(default=False)
    total_breakfast_tickets = models.IntegerField(default=False)
    total_fullboard_tickets = models.IntegerField(default=False)
    total_halfboard_tickets = models.IntegerField(default=False)
    total_all_inclusive_tickets = models.IntegerField(default=False)
    total_airport_transfer = models.IntegerField(default=False)
    total_price = models.DecimalField(max_digits=7, decimal_places=2, default = False)

    def __str__(self):
        return str(self.id)

class TripTemplate(models.Model):
    id = models.AutoField(primary_key=True)
    ring = models.ForeignKey(Ring, on_delete=models.CASCADE, default= False)
    internal_reference = models.CharField(max_length=40)
    comercial_reference = models.CharField(max_length=40)
    marketing_message =models.CharField(max_length=60, default = "Last days!!")
    main_description = models.CharField(max_length = 120, default="00000")
    secondary_description = models.TextField(max_length =300, default="00000")
    include_hotel = models.BooleanField(default=False)
    hoteltrip_id = models.ForeignKey(HotelTrip,
                                     on_delete = models.CASCADE,
                                     null = True, blank = True
                                    )

    include_flight = models.BooleanField(default=False)
    include_event = models.BooleanField(default=False)
    eventtrip_id = models.ForeignKey(EventTrip,
                                     on_delete = models.CASCADE,
                                     null = True, blank = True,
                                     )

    basic_price = models.DecimalField(max_digits=6, decimal_places=2, default = False)
    date_to_go =models.DateTimeField(null=True)
    date_to_return = models.DateTimeField(null=True)
    stock = models.IntegerField()
    sold = models.IntegerField()
    refund = models.IntegerField()
    cancelled = models.IntegerField()
    is_active = models.BooleanField(default=False)
    photo_index = models.ImageField(upload_to='photos/Trips/%Y/%m/%d/photo_main', null=True)
    photo_main = models.ImageField(upload_to='photos/Trips/%Y/%m/%d/photo_main', null=True)
    img_1 = models.ImageField(upload_to='photos/Trips/%Y/%m/%d/photo_1', null=True, default = '00000')
    img_2 = models.ImageField(upload_to='photos/Trips/%Y/%m/%d/photo_2', null=True, default = "00000")

    def __str__(self):
        return self.internal_reference

class Trip(models.Model):

    TRIP_STATUS = (
        ('w', 'Wish list'),
        ('B', 'Basket case'),
        ('X', 'Charged'),
        ('C', 'Cancelled'),
        ('R', 'Refunded'),
        ('I', 'Inactive')
    )

    id = models.AutoField(primary_key = True)
    userAccountID = models.ForeignKey('pages.UserAccount', on_delete=models.CASCADE, default = False)
    tripTemplateID = models.ForeignKey(TripTemplate, on_delete=models.CASCADE, default = False)
    eventTripID = models.ForeignKey(EventTrip, on_delete=models.CASCADE, default = False)
    hotelTripID = models.ForeignKey(HotelTrip, on_delete=models.CASCADE, default = False)
    flightTripID = models.ForeignKey(FlightTrip, on_delete=models.CASCADE, default = False)
    final_price = models.DecimalField(max_digits=7, decimal_places=2)
    status = models.CharField(max_length=1, choices=TRIP_STATUS, blank=False, default='I')

    def __str__(self):
        return self.id






