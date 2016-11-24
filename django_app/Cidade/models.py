from django.db import models
from Estado.models import Estado

# Create your models here.
class Cidade(models.Model):
    nome = models.TextField()
    estado = models.ForeignKey(Estado,blank=False, null=True)