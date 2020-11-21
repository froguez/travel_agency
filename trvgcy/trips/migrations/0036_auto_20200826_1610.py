# Generated by Django 3.0.8 on 2020-08-26 16:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('trips', '0035_auto_20200826_1539'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='triptemplate',
            name='eventtrip_id',
        ),
        migrations.RemoveField(
            model_name='triptemplate',
            name='hoteltrip_id',
        ),
        migrations.AddField(
            model_name='eventtrip',
            name='ring',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='trips.Ring'),
        ),
    ]
