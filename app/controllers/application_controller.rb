class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # This method configuures the parameters that will be perrmitted
  # to be entered as student's model parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |student_params|
      student_params.permit(:name, :urn, :email, :password)
    end
  end
end
