class CommentsController < ApplicationController
  
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

end
