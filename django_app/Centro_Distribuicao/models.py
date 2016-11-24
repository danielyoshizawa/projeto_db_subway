from django.db import models
from Endereco.models import Endereco
#from Estoque_Centro.models import Estoque_Centro

# Create your models here.
class Centro_Distribuicao(models.Model):
    email = models.TextField()
    nome = models.TextField()
    telefone = models.IntegerField()
    endereco = models.ForeignKey(Endereco, blank=False, null=True)
    #estoque = models.ForeignKey(Estoque_Centro)