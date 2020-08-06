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
    coordinates = models.CharField(max_length=15)

class Hotel(models.Model):

# Fields

    id = models.AutoField(primary_key=True)
    addressid = models.ForeignKey(Address, on_delete=models.CASCADE,)
    name = models.CharField(max_length=40, unique=True)
    chain = models.CharField(max_length=30)
    stars = models.CharField(max_length=2)  #'5+'
    category = models.CharField(max_length=30)
    email = models.EmailField(max_length=40)
    telephone = models.CharField(max_length=15)
    is_partner = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
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
    allow_pet = models.BooleanField(default=True)
    rating = models.CharField(max_length=2) #'10'
    rating_business = models.CharField(max_length=2) #'10'
    rating_family = models.CharField(max_length=2) #'10'
    rating_single = models.CharField(max_length=2) #'10'
    rating_couples = models.CharField(max_length=2) #'10'
    rating_pet = models.CharField(max_length=2) #'10'

# Metadata

# Methods

    def __str__(self):
        return self.name

class Airport(models.Model):

    id = models.AutoField(primary_key=True)
    addressid = models.ForeignKey(Address, on_delete=models.CASCADE,)
    name = models.CharField(max_length=40)

    def __str__(self):
        return self.name

class Event(models.Model):

    id = models.AutoField(primary_key=True)
    addressid = models.ForeignKey(Address, on_delete=models.CASCADE,)
    name = models.CharField(max_length=40)
    category = models.CharField(max_length=30)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    is_active = models.BooleanField(default=True)

class Flight(models.Model):

    id = models.AutoField(primary_key = True)
    origin = models.ForeignKey(Airport, on_delete = models.CASCADE)
    destiny = models.ForeignKey(Airport, on_delete = models.CASCADE)
    airline = models.CharField(max_length=20)
    numflight = models.CharField(max_length=10)
    takeoff = models.DateTimeField()
    landing = models.DateTimeField()
    price = models.DecimalField(max_length=5, decimal_places=2)
    is_active =models.BooleanField(default=True)









