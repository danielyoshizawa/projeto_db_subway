from django.db import models
from Centro_Distribuicao.models import Centro_Distribuicao
# Create your models here.
class Veiculo(models.Model):
    placa = models.TextField()
    disponibilidade = models.BooleanField()
    modelo = models.TextField()
    centro_distribuicao = models.ForeignKey(Centro_Distribuicao,blank=False, null=True)