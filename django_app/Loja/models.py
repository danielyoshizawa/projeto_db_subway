from django.db import models
from Funcionario.models import Funcionario
from Endereco.models import Endereco
from Estoque_Loja.models import Estoque_Loja
from Inventario.models import Inventario
from Proprietario.models import Proprietario

# Create your models here.
class Loja(models.Model):
    capacidade = models.IntegerField()
    area = models.FloatField()
    gerente = models.ForeignKey(Funcionario, blank=False, null=True)
    endereco = models.ForeignKey(Endereco, blank=False, null=True)
    estoque = models.ForeignKey(Estoque_Loja,blank=False, null=True)
    inventario = models.ForeignKey(Inventario,blank=False, null=True)
    franquia = models.BooleanField()
    cnpj = models.IntegerField()
    proprietario = models.ForeignKey(Proprietario,blank=False, null=True)