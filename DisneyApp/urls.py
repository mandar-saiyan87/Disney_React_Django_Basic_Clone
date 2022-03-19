from django.urls import path

from . import views

urlpatterns = [
    # path('', views.index, name='index'),
    path('', views.getRoutes, name='getRoutes'),
    path('getmovies/', views.getMovies, name='getMovies'),
    path('getmovies/<str:title>', views.getMovie, name='getMovie')
]
