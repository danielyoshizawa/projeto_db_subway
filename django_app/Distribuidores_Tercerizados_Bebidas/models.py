from django.db import models
from Distribuidor_Tercerizado.models import Distribuidor_Tercerizado
from Alimento.models import Alimento
# Create your models here.
class Distribuidores_Tercerizados_Bebidas(models.Model):
    distribuidor_tercerizado = models.ForeignKey(Distribuidor_Tercerizado, null=False, default=0)
    alimento = models.ForeignKey(Alimento, null=False, default=0)

    def __str__(self):
        return self.alimento
