class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


    private
  
    # 未ログインユーザーのフィルター
    def logged_in_user
      unless user_signed_in?
        flash[:danger] = "ログインを先にしてください"
        redirect_to new_user_session_url
      end
    end
  
end