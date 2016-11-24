from django.db import models
from Item_de_Inventario.models import Item_de_Inventario

# Create your models here.
class Inventario(models.Model):
    item_de_inventario = models.ForeignKey(Item_de_Inventario, blank=False, null=True)
    quantidade = models.IntegerField()