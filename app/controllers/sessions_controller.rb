class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:session][:email].downcase
    password = params[:session][:password]
    if login(email, password)
      flash[:success] = (t :login_success)
      redirect_to contents_path
    else
      flash.now[:danger] = (t :login_failure)
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = (t :loggedout)
    redirect_to root_url
  end

  private

  def login(email, password)
    @user = User.find_by(email: email)
    if @user && @user.authenticate(password)
      # ログイン成功
      session[:user_id] = @user.id
      return true
    else
      # ログイン失敗
      return false
    end
  end
end