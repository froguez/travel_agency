# Generated by Django 3.0.8 on 2020-08-08 16:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('trips', '0008_auto_20200808_1613'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='city',
            field=models.CharField(default=False, max_length=30),
        ),
        migrations.AlterField(
            model_name='hotel',
            name='city',
            field=models.CharField(default=False, max_length=30),
        ),
    ]
