# Generated by Django 3.0.8 on 2020-08-09 20:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('trips', '0024_trip'),
    ]

    operations = [
        migrations.RenameField(
            model_name='trip',
            old_name='userID',
            new_name='userAccountID',
        ),
    ]
