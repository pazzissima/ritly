class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  #before_filter :signed_in_user, only: [:create, :new, :edit, :update]
  #include SessionsHelper
  protect_from_forgery
end
