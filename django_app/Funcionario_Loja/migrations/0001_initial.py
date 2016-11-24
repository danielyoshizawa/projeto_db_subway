# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-24 03:03
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Funcionario', '0002_auto_20161124_0300'),
        ('Loja', '0002_auto_20161124_0300'),
    ]

    operations = [
        migrations.CreateModel(
            name='Funcionario_Loja',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('funcionario', models.ForeignKey(default=0, on_delete=django.db.models.deletion.CASCADE, to='Funcionario.Funcionario')),
                ('loja', models.ForeignKey(default=0, on_delete=django.db.models.deletion.CASCADE, to='Loja.Loja')),
            ],
        ),
    ]