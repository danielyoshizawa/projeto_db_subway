from django.db import models
from Loja.models import Loja
from Veiculo.models import Veiculo

# Create your models here.
class Entrega(models.Model):
    data_hora = models.DateTimeField()
    destino = models.ForeignKey(Loja,blank=False, null=True)
    veiculo = models.ForeignKey(Veiculo,blank=False, null=True)