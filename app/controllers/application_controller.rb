class ApplicationController < ActionController::Base
protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:name, :location, :age, :occupation)
    end
  end
  #
  # def resource_name
  #   :user
  # end
  #
  # def resource
  #   @resource ||= User.new
  # end
  #
  # def devise_mapping
  #   @devise_mapping ||= Devise.mappings[:user]
  # end

end
