# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-24 02:25
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Pesquisa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('atendimento', models.IntegerField()),
                ('limpeza', models.IntegerField()),
                ('preco', models.IntegerField()),
                ('ambiente', models.IntegerField()),
                ('sugestoes', models.TextField()),
            ],
        ),
    ]
