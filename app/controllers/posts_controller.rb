class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new(user_id: current_user)  #@post.childposts.build #form_for用
  end
  
end
