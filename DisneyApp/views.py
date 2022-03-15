from django.shortcuts import render
# from django.http import HttpResponse
# from django.http import JsonResponse
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import MovieSeriallizer
from DisneyApp.models import Movie

# Create your views here.


# def index(request):
#     return HttpResponse("Hello world!!")


@api_view(['GET'])
def getRoutes(request):
    routes = [
        {'GET': '/api/projects'},
        {'GET': '/api/projects/id'},
        {'POST': '/api/projects'}
    ]
    return Response(routes)


@api_view(['GET'])
def getMovies(request):
    movies = Movie.objects.all()
    serializer = MovieSeriallizer(movies, many=True)
    return Response(serializer.data)
