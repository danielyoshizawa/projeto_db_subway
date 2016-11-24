from django.db import models
from Endereco.models import Endereco

# Create your models here.
class Proprietario(models.Model):
    nome = models.TextField()
    cpf = models.IntegerField()
    data_nascimento = models.DateField()
    endereco = models.ForeignKey(Endereco,blank=False, null=True)