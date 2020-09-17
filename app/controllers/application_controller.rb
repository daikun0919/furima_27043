class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:first_name_kana,:last_name_kana,:nickname,:birthday,:email])
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end


end



# class ApplicationController < ActionController::Base
#   before_action :basic_auth
#   (省略)

#   private

#   def basic_auth
#     authenticate_or_request_with_http_basic do |username, password|
#       username == 'admin' && password == '2222'
#     end
#   end
# end



