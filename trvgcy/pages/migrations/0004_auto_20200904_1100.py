# Generated by Django 3.0.8 on 2020-09-04 11:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0003_remove_useraccount_firstname'),
    ]

    operations = [
        migrations.AlterField(
            model_name='useraccount',
            name='email',
            field=models.EmailField(max_length=30, unique=True),
        ),
    ]