from django.db import models

# Create your models here.
class Pesquisa(models.Model):
    atendimento = models.IntegerField()
    limpeza = models.IntegerField()
    preco = models.IntegerField()
    ambiente = models.IntegerField()
    sugestoes = models.TextField()

    def __str__(self):
        return "Atendimento : " + self.atendimento