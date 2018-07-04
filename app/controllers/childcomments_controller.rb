class ChildcommentsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]  
  
  def create
    @childcomment = current_user.childcomments.build(childcomment_params)
    if @childcomment.save
#      flash[:success] = 'コメントを投稿しました。'
      redirect_back(fallback_location: root_path)
    else
      @childcomments = current_user.posts.order('created_at DESC').page(params[:page])
#      flash.now[:danger] = 'コメントの投稿に失敗しました。'
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @childcomment.destroy
#    flash[:success] = 'メッセージを削除しました。'
    redirect_back(fallback_location: root_path)    
  end
  
  
  private
  
  def childcomment_params
    params.require(:childcomment).permit(:user_id, :comment_id, :childcomment)
  end

  def correct_user
    @childcomment = current_user.childcomments.find_by(id: params[:id])
    unless @childcomment
      redirect_to root_url
    end
  end  
  
end
