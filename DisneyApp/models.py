from django.db import models

# Create your models here.


class Movie(models.Model):
    backgrdImg = models.CharField(max_length=600)
    cardImg = models.CharField(max_length=600)
    description = models.CharField(max_length=1000)
    subtitle = models.CharField(max_length=600)
    title = models.CharField(max_length=600)
    type = models.CharField(max_length=600)

    def __str__(self):
        return self.title
