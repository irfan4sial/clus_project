class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # check_authorization
  # skip_authorization_check
  #include ControllerAuthentication




  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :redirect_home_screen

  def redirect_home_screen
    logger.debug controller_name.inspect
    logger.debug action_name.inspect
    logger.debug request.fullpath.inspect
    logger.debug request.original_fullpath.inspect
    if request.fullpath == "/users/sign_in" || request.fullpath == "/users/sign_up"
      #redirect_to root_url
    else

    end
  end


  def after_sign_in_path_for(resource)
    root_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :role_type) }
    #devise_parameter_sanitizer.sanitize(:account_update) {|u| u.permit(:email, :password,:current_password, :password_confirmation, :firstname, :lastname, :date_of_birth, :username, :address, :suite_number, :city, :state, :zip, :phone_number)}

  end
end
