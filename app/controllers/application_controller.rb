class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :define_permitted_parameters, if: :devise_controller?
   include SetSource
   include CurrentUserConcern
   include DefaultPageContent


def define_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])

end
#try to override the current user def created by devise





end
