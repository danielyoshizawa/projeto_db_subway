from django.db import models
from Cidade.models import Cidade

# Create your models here.
class Logradouro(models.Model):
    nome = models.TextField(null=False)
    tipo = models.TextField(null=False)
    cidade = models.ForeignKey(Cidade, blank=False, null=False)

    def __str__(self):
        return self.nome

    class Meta:
        db_table = "logradouro"