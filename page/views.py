from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from .forms import *
from django.contrib.auth.models import User
from .models import *


# Create your views here.


def index(request):
    return render(request, '../templates/base.html', {'discipline': Discipline.objects.all(), 'match': Match.objects.all()})


def connexion(request):
    error = False

    if request.method == "POST":
        form = ConnexionForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
            user = authenticate(username=username, password=password)  # Nous vérifions si les données sont correctes
            if user:  # Si l'objet renvoyé n'est pas None
                login(request, user)  # nous connectons l'utilisateur
                return redirect(index)
            else:  # sinon une erreur sera affichée
                error = True
    else:
        form = ConnexionForm()

    return render(request, 'login.html', locals())


def deconnexion(request):
    logout(request)
    return redirect(index)


def inscription(request):
    error = False
    if request.method == "POST":
        form = InscriptionForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            first_name = form.cleaned_data["first_name"]
            last_name = form.cleaned_data["last_name"]
            email = form.cleaned_data["email"]
            password = form.cleaned_data["password"]
            contact = form.cleaned_data["contact"]
            user = User(username=username, first_name=first_name, last_name=last_name, email=email)
            user.set_password(password)
            user.save()
            userProfile = UserProfile(user_id=user.id, contact=contact)
            userProfile.save()
            return redirect(connexion)
    else:
        form = InscriptionForm()

    return render(request, 'signin.html', locals())


def paris(request, id, userId):
    discipline = Discipline.objects.all()
    user = UserProfile.objects.get(user_id=userId)
    match = Match.objects.get(id=id)
    user = UserProfile.objects.get(user_id=userId)
    parisS = Paris.objects.get(utilisateur=userId, match_id=match.id)
    if request.method == "POST":
        form = ParisForm(request.POST)
        if form.is_valid():
            scoreP = form.cleaned_data["scoreP"]
            scoreA = form.cleaned_data["scoreA"]
            mise = form.cleaned_data["mise"]
            user.solde = user.solde-mise
            paris = Paris(equipeP=match.equipeP, equipeA=match.equipeA, scoreA=scoreA, scoreP=scoreP, mise=mise, utilisateur=userId, match_id=match.id)
            user.save()
            paris.save()
            return render(request, 'paris.html', locals())
    else:
        form = ParisForm()
    return render(request, 'paris.html', locals())







