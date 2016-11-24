from django.db import models
from Alimento.models import Alimento
from Entrega.models import Entrega

# Create your models here.
class Entrega_Alimento(models.Model):
    alimento = models.ForeignKey(Alimento,blank=False, null=True)
    entrega = models.ForeignKey(Entrega,blank=False, null=True)
    quantidade = models.IntegerField()