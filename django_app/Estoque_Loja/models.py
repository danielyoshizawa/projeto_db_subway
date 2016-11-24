from django.db import models
from Alimento.models import Alimento

# Create your models here.
class Estoque_Loja(models.Model):
    alimento = models.ForeignKey(Alimento,blank=False, null=True)
    quantida = models.IntegerField()