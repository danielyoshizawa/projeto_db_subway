from django.db import models
from Alimento.models import Alimento
from Centro_Distribuicao.models import Centro_Distribuicao
# Create your models here.

class Estoque_Centro(models.Model):
    alimento = models.ForeignKey(Alimento,blank=False, null=True)
    centro = models.ForeignKey(Centro_Distribuicao,blank=False, null=True)
    quantidade = models.IntegerField()