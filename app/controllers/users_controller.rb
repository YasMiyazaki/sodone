class UsersController < ApplicationController
  
  before_action :require_user_logged_in, only: [:show, :update]
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      redirect_to @user
      flash[:success] = "プロフィールを更新しました" 
    else
      render'show'
    end
end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :nationality, :mother_tongue, :japanese_ability, :occupation, :age, :residence, :email_allowed, :agreement)
  end

end