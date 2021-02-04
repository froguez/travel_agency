# Generated by Django 3.0.8 on 2020-08-07 09:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='useraccount',
            name='active',
        ),
        migrations.AddField(
            model_name='useraccount',
            name='firstname',
            field=models.CharField(default='Anonymous', max_length=30),
        ),
        migrations.AddField(
            model_name='useraccount',
            name='is_active',
            field=models.BooleanField(default=False),
        ),
    ]
