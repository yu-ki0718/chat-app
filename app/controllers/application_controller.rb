class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    # ログイン後のリダイレクト先
    def after_sign_in_path_for(resource)
        "room/show"
    end

    protected

    # 入力フォームからアカウント名情報をDBに保存するために追加
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
