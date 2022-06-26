class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def authorize_editor!
    unless current_user.editor?
      flash[:alert] = "Debes ser editor para hacer esto."
      redirect_to root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:editor])
  end
end
