from django.db import models

# Create your models here.
class Distribuidor_Tercerizado(models.Model):
    nome = models.TextField()
    contato = models.IntegerField()