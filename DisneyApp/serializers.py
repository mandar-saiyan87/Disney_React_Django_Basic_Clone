from dataclasses import fields
from rest_framework import serializers
from DisneyApp.models import Movie


class MovieSeriallizer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = '__all__'
