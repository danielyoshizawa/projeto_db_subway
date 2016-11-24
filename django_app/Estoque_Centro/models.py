from django.db import models
from Alimento.models import Alimento
from Centro_Distribuicao.models import Centro_Distribuicao
# Create your models here.

class Estoque_Centro(models.Model):
    alimento = models.ForeignKey(Alimento,blank=False, null=False)
    centro = models.ForeignKey(Centro_Distribuicao,blank=False, null=False)
    quantidade = models.IntegerField(null=False)

    def __str(self):
        return self.alimento