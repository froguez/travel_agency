# Generated by Django 3.0.8 on 2020-08-26 17:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('trips', '0039_auto_20200826_1648'),
    ]

    operations = [
        migrations.AlterField(
            model_name='triptemplate',
            name='hoteltrip_id',
            field=models.ForeignKey(blank=True, limit_choices_to=models.Q(ring=models.ForeignKey(default=False, on_delete=django.db.models.deletion.CASCADE, to='trips.Ring')), null=True, on_delete=django.db.models.deletion.CASCADE, to='trips.HotelTrip'),
        ),
    ]
