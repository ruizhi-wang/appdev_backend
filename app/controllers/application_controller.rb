class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # This is a helper that gives the ability to use sessions
  # Sessions are like cookies, but deleted every time the browser is closed
  include SessionsHelper

  
end
