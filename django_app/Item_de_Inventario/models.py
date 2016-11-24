from django.db import models

# Create your models here.
class Item_de_Inventario(models.Model):
    nome = models.TextField(null=False)

    def __str__(self):
        return self.nome