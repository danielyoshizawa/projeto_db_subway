from django.db import models
from Pedido.models import Pedido
from Alimento.models import Alimento
# Create your models here.

class Itens_Pedido(models.Model):
    pedido = models.ForeignKey(Pedido, blank=False, null=False)
    alimento = models.ForeignKey(Alimento, blank=False, null=False)
    quantidade = models.IntegerField(null=False)

    def __str__(self):
        return self.pedido.numero_nota_fiscal

    class Meta:
        db_table = "itens_pedido"