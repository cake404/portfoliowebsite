# Generated by Django 2.1.5 on 2019-02-20 21:20

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('resumeapp', '0009_auto_20190126_0127'),
    ]

    operations = [
        migrations.CreateModel(
            name='TechnicalKnowledge',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('strength', models.PositiveSmallIntegerField(validators=[django.core.validators.DecimalValidator(decimal_places=2, max_digits=2)])),
            ],
        ),
    ]
