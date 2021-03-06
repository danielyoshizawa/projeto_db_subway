# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-24 01:34
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Alimento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.TextField(default='', max_length=256)),
                ('proteinas', models.IntegerField()),
                ('carboidratos', models.IntegerField()),
                ('gorduras', models.IntegerField()),
                ('calorias', models.IntegerField()),
                ('preco', models.FloatField()),
                ('ingrediente', models.BooleanField()),
                ('recheiro', models.BooleanField()),
                ('marca', models.TextField(default='', max_length=256)),
            ],
        ),
    ]
