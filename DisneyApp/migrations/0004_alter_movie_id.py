# Generated by Django 4.0.2 on 2022-02-27 05:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('DisneyApp', '0003_alter_movie_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]