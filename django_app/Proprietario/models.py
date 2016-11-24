from django.db import models
from Endereco.models import Endereco

# Create your models here.
class Proprietario(models.Model):
    nome = models.TextField(null=False)
    cpf = models.IntegerField(null=False)
    data_nascimento = models.DateField(null=False)
    endereco = models.ForeignKey(Endereco,blank=False, null=False)

    def __str__(self):
        return self.nome