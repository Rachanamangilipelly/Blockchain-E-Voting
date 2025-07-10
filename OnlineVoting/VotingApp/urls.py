from django.urls import path

from . import views

urlpatterns = [path("index.html", views.index, name="index"),
	       path('Login.html', views.Login, name="Login"), 
	       path('AddVoter.html', views.AddVoter, name="AddVoter"),
	       path('AddVoterAction', views.AddVoterAction, name="AddVoterAction"),
	       path('UserLogin', views.UserLogin, name="UserLogin"),
	       path('Admin.html', views.Admin, name="Admin"), 
	       path('AdminLogin', views.AdminLogin, name="AdminLogin"),	 
	       path('AddParty.html', views.AddParty, name="AddParty"),
	       path('AddPartyAction', views.AddPartyAction, name="AddPartyAction"),
	       path('ViewParty', views.ViewParty, name="ViewParty"), 
	       path('ViewVotes', views.ViewVotes, name="ViewVotes"),
	       path("WebCam", views.WebCam, name="WebCam"),
	       path("ValidateUser", views.ValidateUser, name="ValidateUser"),
	       path("CastVote.html", views.CastVote, name="CastVote"),
         path("UserScreen.html",views.alreadyCastVote,name="alreadyCastVote"),
	       path("FinishVote", views.FinishVote, name="FinishVote"),
	       path("saveUser", views.saveUser, name="saveUser"),
]