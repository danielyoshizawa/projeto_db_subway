from django.db import models
from Endereco.models import Endereco

# Create your models here.
class Centro_Distribuicao(models.Model):
    email = models.TextField(blank=False, max_length=256, null=False)
    nome = models.TextField(null=False)
    telefone = models.IntegerField(null=False)
    endereco = models.ForeignKey(Endereco, blank=False, null=False)

    def __str__(self):
        return self.nome