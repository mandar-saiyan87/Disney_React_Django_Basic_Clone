# Generated by Django 4.0.2 on 2022-02-27 07:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('DisneyApp', '0004_alter_movie_id'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Movie',
        ),
    ]
