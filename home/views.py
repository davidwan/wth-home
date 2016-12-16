import json
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext
from django.shortcuts import render_to_response
from django.db import models
from models import Banner, Alumni, Committee, TeamMember
from home.models import Users

def mainPage(request):
	context = RequestContext(request)

	# Sorts all content by ID - this may be bad later
	banner = sorted(Banner.objects.all(), key=lambda x: x.id)
	alumnis = sorted(Alumni.objects.all(), key=lambda x: x.id)
	committees = sorted(Committee.objects.all(), key=lambda x: x.id)
	team_members = sorted(TeamMember.objects.all(), key=lambda x: x.id)
	return render_to_response('index.html', {'banner': banner, 
											'alumnis': alumnis, 
											"committees": committees,
											"team_members": team_members}, context)

def login(request):
 # Request the context of the request.
    # The context contains information such as the client's machine details, for example.
	context = RequestContext(request)

    # Construct a dictionary to pass to the template engine as its context.
    # Note the key boldmessage is the same as {{ boldmessage }} in the template!
	result_list = []

	if request.method == 'GET':
		# Return a rendered response to send to the client.
	    # We make use of the shortcut function to make our lives easier.
	    # Note that the first parameter is the template we wish to use.
	    return render_to_response('login.html', {'result_list': result_list}, context)
	elif request.method == 'POST':
		# More to do here with Login Sequence
		# and check valeus against database

		# User signup form fields
		user_name = request.POST['user_name']
		user_password = request.POST['user_password']



		return HttpResponseRedirect('/')


def signup(request):
	context = RequestContext(request)

	result_list = []

	if request.method == 'GET':
		return render_to_response('signup.html', {'result_list': result_list}, context)
	elif request.method == 'POST':

		email = request.POST['email']
		password = request.POST['password']
		confirm_password = request.POST['confirm_password']
		first_name = request.POST['first_name']
		last_name = request.POST['last_name']
		address1 = request.POST['address1']
		address2 = request.POST['address2']
		city = request.POST['city']
		state = request.POST['state']
		zip_code = request.POST['zip_code']
		country = request.POST['country']
		school = request.POST['school']
		major = request.POST['major']
		grad_year = request.POST['grad_year']

		user = Users(id = Users.objects.latest('id').id + 1, 
				email = email,
				fname = first_name,
				lname = last_name,
				address = address1,
				address2 = address2,
				city = city,
				state = state,
				zip = zip_code,
				country = country,
				admin_level = 0,
				school = school,
				major = major,
				graduation_year = grad_year)
		user.save()
		return HttpResponseRedirect('/')
