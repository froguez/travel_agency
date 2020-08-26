# Generated by Django 3.0.8 on 2020-08-26 15:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('trips', '0033_auto_20200810_1929'),
    ]

    operations = [
        migrations.RenameField(
            model_name='event',
            old_name='ring',
            new_name='ring_id',
        ),
        migrations.RenameField(
            model_name='hotel',
            old_name='double_room_price',
            new_name='doubleR_price',
        ),
        migrations.RenameField(
            model_name='hotel',
            old_name='single_price',
            new_name='singleR_price',
        ),
        migrations.RenameField(
            model_name='hoteltrip',
            old_name='people_to_airport_transfer',
            new_name='total_airport_transfer',
        ),
        migrations.RenameField(
            model_name='hoteltrip',
            old_name='all_inclusive_tickets',
            new_name='total_all_inclusive_tickets',
        ),
        migrations.RenameField(
            model_name='hoteltrip',
            old_name='breakfast_tickets',
            new_name='total_breakfast_tickets',
        ),
        migrations.RenameField(
            model_name='hoteltrip',
            old_name='fullboard_tickets',
            new_name='total_fullboard_tickets',
        ),
        migrations.RenameField(
            model_name='hoteltrip',
            old_name='halfboard_tickets',
            new_name='total_halfboard_tickets',
        ),
        migrations.RenameField(
            model_name='hoteltrip',
            old_name='kindergarden_tickets',
            new_name='total_kindergarden_tickets',
        ),
    ]