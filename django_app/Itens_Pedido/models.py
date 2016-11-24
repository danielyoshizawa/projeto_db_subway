from django.db import models
from Pedido.models import Pedido
from Alimento.models import Alimento
# Create your models here.

class Itens_Pedido(models.Model):
    pedido = models.ForeignKey(Pedido)
    alimento = models.ForeignKey(Alimento, blank=False, null=True)
    quantidade = models.IntegerField()