from django.db import models
from Alimento.models import Alimento
from Entrega.models import Entrega

# Create your models here.
class Entrega_Alimento(models.Model):
    alimento = models.ForeignKey(Alimento,blank=False, null=False)
    entrega = models.ForeignKey(Entrega,blank=False, null=False)
    quantidade = models.IntegerField(null=False)

    def __str__(self):
        return self.alimento

    class Meta:
        db_table = "entrega_alimento"