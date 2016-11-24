from django.db import models
from Funcionario.models import Funcionario
from Endereco.models import Endereco
from Estoque_Loja.models import Estoque_Loja
from Inventario.models import Inventario
from Proprietario.models import Proprietario

# Create your models here.
class Loja(models.Model):
    capacidade = models.IntegerField(null=False)
    area = models.FloatField(null=False)
    gerente = models.ForeignKey(Funcionario, blank=False, null=False)
    endereco = models.ForeignKey(Endereco, blank=False, null=False)
    estoque = models.ForeignKey(Estoque_Loja,blank=False, null=False)
    inventario = models.ForeignKey(Inventario,blank=False, null=False)
    franquia = models.BooleanField(null=False)
    cnpj = models.IntegerField(null=False)
    proprietario = models.ForeignKey(Proprietario,blank=False, null=False)

    def __str__(self):
        return self.endereco.logradouro.nome

    class Meta:
        db_table = "loja"