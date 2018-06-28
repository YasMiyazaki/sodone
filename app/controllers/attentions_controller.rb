class AttentionsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])

    # Want 関係として保存
    if params[:type] == 'Want'
      current_user.want(@post)
#      flash[:success] = 'Want しました。'
    end

    # Offer 関係として保存
    if params[:type] == 'Offer'
      current_user.offer(@post)
#      flash[:success] = 'Offer しました。'
    end
    
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @post = Post.find(params[:post_id])

    # Want 関係として保存
    if params[:type] == 'Want'
      current_user.unwant(@post) 
#      flash[:success] = 'Want を解除しました。'
    end

    # Offer 関係として保存
    if params[:type] == 'Offer'
      current_user.unoffer(@post) 
#      flash[:success] = 'Offer を解除しました。'
    end
    
    redirect_back(fallback_location: root_path)
  end
end