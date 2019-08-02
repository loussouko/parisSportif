from django import forms
from django.contrib.auth.models import User

#formulaire de connexion
class ConnexionForm(forms.Form):
    username = forms.CharField(label="Nom d'utilisateur", max_length=30)
    password = forms.CharField(label="Mot de passe", widget=forms.PasswordInput)


#formulaire d'inscription
class InscriptionForm(forms.Form):
    error_css_class = 'error'
    required_css_class = 'required'
    username = forms.CharField(label="Nom d'utilisateur", max_length=150)
    first_name = forms.CharField(label="Nom", max_length=30)
    last_name = forms.CharField(label="Prenom", max_length=150)
    email = forms.EmailField(label="Email", max_length=254)
    contact = forms.IntegerField(label="Numero")
    password = forms.CharField(label="Mot de passe", widget=forms.PasswordInput)


class ParisForm(forms.Form):
    scoreP = forms.IntegerField(label="Premiere equipe", max_value=500)
    scoreA = forms.IntegerField(label="deuxieme equipe", max_value=500)
    mise = forms.FloatField(label="Entrer la mise", min_value=100)






