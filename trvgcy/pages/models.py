from django.db import models

# Create your models here.

class UserAccount(models.Model):

# Fields

    id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=12, unique=True)
    password = models.CharField(max_length=12)
    email = models.EmailField(max_length=30, unique = True)
    is_active = models.BooleanField(default=False)

# Metadata

# Methods

    def __str__(self):
        return self.username