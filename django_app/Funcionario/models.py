from django.db import models
from Endereco.models import Endereco

# Create your models here.
class Funcionario(models.Model):
    nome = models.TextField()
    telefone = models.IntegerField()
    cpf = models.IntegerField()
    data_nascimento = models.DateField()
    endereco = models.ForeignKey(Endereco, blank=False, null=True)
    data_ingresso = models.DateField()
    salario = models.FloatField()