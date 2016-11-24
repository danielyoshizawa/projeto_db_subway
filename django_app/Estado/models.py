from django.db import models
from Pais.models import Pais

# Create your models here.
class Estado(models.Model):
    nome = models.TextField()
    sigla = models.TextField()
    pais = models.ForeignKey(Pais,blank=False, null=True)