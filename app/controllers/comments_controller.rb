class CommentsController < ApplicationController
  before_action :require_user_logged_in, only: [:create, :destroy]
  before_action :correct_user, only: [:destroy]  
  
  def create
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
  
  def list
    @comments = Comment.order('created_at DESC').page(params[:page])
  end
  
  def show
    @comment = Comment.find(params[:id])
    @childcomments = @comment.childcomments.all
    @childcomment = Childcomment.new(user_id: current_user)  #form_for用
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
