from django.db import models
from Cidade.models import Cidade

# Create your models here.
class Logradouro(models.Model):
    nome = models.TextField()
    tipo = models.TextField()
    cidade = models.ForeignKey(Cidade, blank=False, null=True)