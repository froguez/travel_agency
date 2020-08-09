# Generated by Django 3.0.8 on 2020-08-09 13:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('trips', '0019_auto_20200809_1315'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='ring',
            field=models.ForeignKey(default=False, on_delete=django.db.models.deletion.CASCADE, to='trips.Ring'),
        ),
        migrations.AlterField(
            model_name='flight',
            name='ring',
            field=models.ForeignKey(default=False, on_delete=django.db.models.deletion.CASCADE, to='trips.Ring'),
        ),
        migrations.AlterField(
            model_name='trip',
            name='ring',
            field=models.ForeignKey(default=False, on_delete=django.db.models.deletion.CASCADE, to='trips.Ring'),
        ),
    ]
