from django.db import models
from Centro_Distribuicao.models import Centro_Distribuicao
# Create your models here.
class Veiculo(models.Model):
    placa = models.TextField(null=False)
    disponibilidade = models.BooleanField(null=False, default=False)
    modelo = models.TextField(null=False)
    centro_distribuicao = models.ForeignKey(Centro_Distribuicao,blank=False, null=False)

    def __str__(self):
        return self.placa