# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-24 02:25
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Pais', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Estado',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.TextField()),
                ('sigla', models.TextField()),
                ('pais', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='Pais.Pais')),
            ],
        ),
    ]