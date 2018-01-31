class SessionsController < ApplicationController
  def new
  end


  def create
    # 送信されたメールのparamsをもとに、データベースからユーザを取り出す
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーのブラウザ内のcookiesに暗号化されたユーザーIDが生成。
      session[:user_id] = user.id

      flash[:notice] = "ログイン成功しました"
      redirect_to root_path(user.id)
    else
      flash.now[:danger] = "メールアドレスもしくはパスワードが違います。"
      render "new"
    end
  end


  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
