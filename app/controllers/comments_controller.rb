class CommentsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]  
    
  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
#      flash[:success] = 'コメントを投稿しました。'
      redirect_back(fallback_location: root_path)
    else
      @comments = current_user.posts.order('created_at DESC').page(params[:page])
      flash.now[:danger] = 'コメントの投稿に失敗しました。'
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @comment.destroy
    flash[:success] = 'メッセージを削除しました。'
    redirect_back(fallback_location: root_path)    
  end

  private
  
  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end
  
  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    unless @comment
      redirect_to root_url
    end
  end 
  
end
