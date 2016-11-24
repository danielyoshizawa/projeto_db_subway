from django.db import models
from Logradouro.models import Logradouro
# Create your models here.

class Endereco(models.Model):
    cep = models.IntegerField(null=False)
    complemento = models.TextField(null=False)
    numero = models.IntegerField(null=False)
    logradouro = models.ForeignKey(Logradouro,blank=False, null=False)

    def __str__(self):
        return self.logradouro.nome

    class Meta:
        db_table = "endereco"