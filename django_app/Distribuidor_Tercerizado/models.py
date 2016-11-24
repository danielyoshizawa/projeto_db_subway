from django.db import models

# Create your models here.
class Distribuidor_Tercerizado(models.Model):
    nome = models.TextField(null=False)
    contato = models.IntegerField(null=False)

    class Meta:
        db_table = "distribuidor_tercerizado"