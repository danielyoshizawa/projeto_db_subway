# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-24 21:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Alimento', '0004_auto_20161124_1506'),
    ]

    operations = [
        migrations.AlterField(
            model_name='alimento',
            name='marca',
            field=models.TextField(blank=True, default='', max_length=256, null=True),
        ),
    ]