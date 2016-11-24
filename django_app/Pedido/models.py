from django.db import models
from Pesquisa.models import Pesquisa
from Funcionario.models import Funcionario

# Create your models here.
class Pedido(models.Model):
    numero_nota_fiscal = models.IntegerField()
    data = models.DateField()
    total = models.FloatField()
    pesquisa = models.ForeignKey(Pesquisa,blank=False, null=True)
    funcionario = models.ForeignKey(Funcionario,blank=False, null=True)