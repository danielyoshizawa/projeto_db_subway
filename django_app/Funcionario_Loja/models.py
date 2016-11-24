from django.db import models
from Funcionario.models import Funcionario
from Loja.models import Loja

# Create your models here.
class Funcionario_Loja(models.Model):
    funcionario = models.ForeignKey(Funcionario, null=False, default=0)
    loja = models.ForeignKey(Loja, null=False, default=0)