class ApplicationController < ActionController::Base
    before_action :require_login

    private
  
    def not_authenticated
      redirect_to login_path
      
    end
    # not_authenticated : 
    # ログインしていない場合に指定されたパスにリダイレクトします。
    # application_controller.rb でこのメソッドをオーバーライドすることで、
    # デフォルトのリダイレクト先を root_path から login_path に変更しています。
end
