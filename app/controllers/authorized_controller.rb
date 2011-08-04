class AuthorizedController < ApplicationController
# Use this controller as a way to authorize access to actions/controllers
# Just have the controller you want to authorize extend this controller instead of ApplicationController
	before_filter :authenticate_user!
	check_authorization
	load_and_authorize_resource
end