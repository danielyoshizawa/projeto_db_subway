from django.db import models
from Tipo_de_Ingrediente.models import Tipo_de_Ingrediente
# Create your models here.
class Alimento(models.Model):
    nome = models.TextField(max_length=256, blank=False, null=False, default='')
    proteinas = models.IntegerField()
    carboidratos = models.IntegerField()
    gorduras = models.IntegerField()
    calorias = models.IntegerField()
    preco = models.FloatField()
    ingrediente = models.BooleanField()
    recheiro = models.BooleanField()
    tipo = models.ForeignKey(Tipo_de_Ingrediente, blank=False, null=True)
    marca = models.TextField(max_length=256, blank=False, null=False, default='')