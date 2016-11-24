from django.db import models

# Create your models here.
class Tipo_de_Ingrediente(models.Model):
    nome = models.TextField()