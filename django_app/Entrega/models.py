from django.db import models
from Loja.models import Loja
from Veiculo.models import Veiculo

# Create your models here.
class Entrega(models.Model):
    data_hora = models.DateTimeField(null=False)
    destino = models.ForeignKey(Loja, blank=False, null=False)
    veiculo = models.ForeignKey(Veiculo, blank=False, null=False)

    def __str__(self):
        return self.data_hora

    class Meta:
        db_table = "entrega"