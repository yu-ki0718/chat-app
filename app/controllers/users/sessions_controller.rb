# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # def destroy
  #   log_out
  #   redirect_to root_path, info: "ログアウトしました"
  # end
  
  # private

  # def log_out
  #   session.delete(:user_id)
  #   @current_user=nil
  # end
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE logout
  # def logout
  #   redirect_to "/"
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
