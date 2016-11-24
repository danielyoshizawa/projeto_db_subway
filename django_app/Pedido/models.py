from django.db import models
from Pesquisa.models import Pesquisa
from Funcionario.models import Funcionario

# Create your models here.
class Pedido(models.Model):
    numero_nota_fiscal = models.IntegerField(null=False)
    data = models.DateField(null=False)
    total = models.FloatField(null=False)
    pesquisa = models.ForeignKey(Pesquisa,blank=False, null=False)
    funcionario = models.ForeignKey(Funcionario,blank=False, null=False)


    def __str__(self):
        return self.numero_nota_fiscal