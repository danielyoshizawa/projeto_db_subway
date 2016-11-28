from django.db import models
from Alimento.models import Alimento

# Create your models here.
class Estoque_Loja(models.Model):
    alimento = models.ForeignKey(Alimento,blank=False, null=False)
    quantida = models.IntegerField(null=False)

    def __str__(self):
        return self.alimento.nome

    class Meta:
        db_table = "estoque_loja"