from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone


class UserProfile(models.Model):
    user = models.OneToOneField(User, related_name='user', on_delete=models.CASCADE)
    contact = models.IntegerField()
    solde = models.FloatField(default=50000)

    def __str__(self):
        return self.user.username


class Discipline(models.Model):
    nomDiscipline = models.CharField(max_length=100)

    def __str__(self):
        return self.nomDiscipline


class Equipe(models.Model):
    nomEquipe = models.CharField(max_length=100)
    image = models.ImageField(upload_to="equipeimg")
    discipline = models.ForeignKey(Discipline, on_delete=models.CASCADE)

    def __str__(self):
        return self.nomEquipe


class Match(models.Model):
    equipeP = models.ForeignKey(Equipe, on_delete=models.CASCADE, related_name='equipeP')
    scoreP = models.IntegerField()
    equipeA = models.ForeignKey(Equipe, on_delete=models.CASCADE, related_name='equipeA')
    scoreA = models.IntegerField()
    jouer = models.IntegerField(default=0)
    heure = models.DateTimeField(default=timezone.now, verbose_name='heure et jour du match')
    discipline = models.ForeignKey(Discipline, on_delete=models.CASCADE)


class Paris(models.Model):
    equipeP = models.CharField(max_length=100, default='null')
    scoreP = models.IntegerField()
    equipeA = models.CharField(max_length=100, default='null')
    scoreA = models.IntegerField()
    gagner = models.IntegerField(default=0)
    mise = models.FloatField(default=0)
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    utilisateur = models.IntegerField()


