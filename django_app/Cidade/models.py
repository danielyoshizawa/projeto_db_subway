from django.db import models
from Estado.models import Estado

# Create your models here.
class Cidade(models.Model):
    nome = models.TextField(null=False)
    estado = models.ForeignKey(Estado,blank=False, null=False)

    def __str__(self):
        return self.nome

    class Meta:
        db_table = "cidade"