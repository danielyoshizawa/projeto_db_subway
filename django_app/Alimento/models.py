from django.db import models
from Tipo_de_Ingrediente.models import Tipo_de_Ingrediente
# Create your models here.
class Alimento(models.Model):
    nome = models.TextField(max_length=256, blank=False, null=False, default='')
    proteinas = models.IntegerField(null=False)
    carboidratos = models.IntegerField(null=False)
    gorduras = models.IntegerField(null=False)
    calorias = models.IntegerField(null=False)
    preco = models.FloatField(null=False)
    ingrediente = models.BooleanField(null=False)
    recheiro = models.BooleanField(null=False)
    tipo = models.ForeignKey(Tipo_de_Ingrediente, blank=False, null=False)
    marca = models.TextField(max_length=256, blank=False, null=False, default='')

    def __str__(self):
        return self.nome

    class Meta:
        db_table = "alimento"