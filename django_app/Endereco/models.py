from django.db import models
from Logradouro.models import Logradouro
# Create your models here.

class Endereco(models.Model):
    cep = models.IntegerField()
    complemento = models.TextField()
    numero = models.IntegerField()
    logradouro = models.ForeignKey(Logradouro,blank=False, null=True)