from django.db import models


# Create your models here.

class Address(models.Model):
    id = models.AutoField(primary_key=True)
    continent = models.CharField(max_length=15)
    country = models.CharField(max_length=15)
    city = models.CharField(max_length=15)
    postalcode = models.CharField(max_length=15)
    street = models.CharField(max_length=40)
    num = models.CharField(max_length=15)
    coordinates = models.CharField(max_length=15, blank=True)

class Hotel(models.Model):
    # Fields

    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=40, unique=True)
    chain = models.CharField(max_length=30)
    stars = models.CharField(max_length=2)  # '5+'
    category = models.CharField(max_length=30, blank = True)
    email = models.EmailField(max_length=40)
    telephone = models.CharField(max_length=15)
    is_partner = models.BooleanField(default=False)
    is_active = models.BooleanField(default=False)
    has_parking = models.BooleanField(default=False)
    has_swimingpool = models.BooleanField(default=False)
    has_gym = models.BooleanField(default=False)
    has_spa = models.BooleanField(default=False)
    has_kindergarden = models.BooleanField(default=False)
    has_single_room = models.BooleanField(default=False)
    has_double_room = models.BooleanField(default=False)
    has_cooking_24h = models.BooleanField(default=False)
    has_checkin_24h = models.BooleanField(default=False)
    has_all_inclusive = models.BooleanField(default=False)
    has_half_board = models.BooleanField(default=False)
    has_full_board = models.BooleanField(default=False)
    has_only_breakfast = models.BooleanField(default=False)
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

    def __str__(self):
        return self.name

class Event(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=40)
    category = models.CharField(max_length=30)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    is_active = models.BooleanField(default=False)
    photo_main = models.ImageField(upload_to='photos/Events/%Y/%m/%d/', null=True)
    photo1 = models.ImageField(upload_to='photos/Events/%Y/%m/%d/', null=True)
    photo2 = models.ImageField(upload_to='photos/Events/%Y/%m/%d/', null=True)

def __str__(self):
    return self.name

class Flight(models.Model):
    id = models.AutoField(primary_key=True)
    airline = models.CharField(max_length=20)
    numflight = models.CharField(max_length=10)
    takeoff = models.DateTimeField()
    landing = models.DateTimeField()
    price = models.DecimalField(max_digits=5, decimal_places=2)
    is_active = models.BooleanField(default=False)

    def __str__(self):
        return self.numflight


class Trip(models.Model):
    internal_reference = models.CharField(max_length=40)
    comercial_reference = models.CharField(max_length=40)
    # designerID = models.ForeignKey()
    # managerID = models.ForeignKey()
    include_hotel = models.BooleanField(default=False)
    include_flight = models.BooleanField(default=False)
    include_event = models.BooleanField(default=False)
    basic_price = models.DecimalField(max_digits=5, decimal_places=2)
    stock = models.IntegerField()
    sold = models.IntegerField()
    refund = models.IntegerField()
    cancelled = models.IntegerField()
    is_active = models.BooleanField(default=False)
    photo_main = models.ImageField(upload_to='photos/Trips/%Y/%m/%d/photo_main', null=True)
