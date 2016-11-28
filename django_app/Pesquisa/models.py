from django.db import models

# Create your models here.
class Pesquisa(models.Model):
    atendimento = models.IntegerField()
    limpeza = models.IntegerField()
    preco = models.IntegerField()
    ambiente = models.IntegerField()
    sugestoes = models.TextField()

    class Meta:
        db_table = "pesquisa"