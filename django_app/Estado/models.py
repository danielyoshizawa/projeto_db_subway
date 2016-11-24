from django.db import models
from Pais.models import Pais

# Create your models here.
class Estado(models.Model):
    nome = models.TextField(null=False)
    sigla = models.TextField(null=False)
    pais = models.ForeignKey(Pais,blank=False, null=False)

    def __str__(self):
        return self.nome

    class Meta:
        db_table = "estado"