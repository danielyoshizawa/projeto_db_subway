# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-24 02:25
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Cidade', '0001_initial'),
        ('Estado', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='cidade',
            name='estado',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='Estado.Estado'),
        ),
    ]