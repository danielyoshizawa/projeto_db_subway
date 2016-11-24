from django.db import models

# Create your models here.
class Pais(models.Model):
    nome = models.TextField(max_length=256, blank=False, null=False, default='')

    def __str__(self):
        return self.nome

    class Meta:
        db_table = "pais"