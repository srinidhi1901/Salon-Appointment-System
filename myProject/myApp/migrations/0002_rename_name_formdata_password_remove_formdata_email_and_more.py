# Generated by Django 5.1.3 on 2024-11-06 09:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='formdata',
            old_name='name',
            new_name='password',
        ),
        migrations.RemoveField(
            model_name='formdata',
            name='email',
        ),
        migrations.RemoveField(
            model_name='formdata',
            name='message',
        ),
        migrations.AddField(
            model_name='formdata',
            name='username',
            field=models.CharField(default=123456789, max_length=100),
            preserve_default=False,
        ),
    ]
