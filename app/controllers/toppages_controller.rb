class ToppagesController < ApplicationController
  def index
    @post1 = Post.where(id: 1)
    @post2 = Post.where(id: 2)
    @post3 = Post.where(id: 3)
    @post4 = Post.where(id: 4)
    @post5 = Post.where(id: 5)
    @post6 = Post.where(id: 6)
    @post7 = Post.where(id: 7)
    @post8 = Post.where(id: 8)
    @post9 = Post.where(id: 9)
    @post10 = Post.where(id: 10)
    @post11 = Post.where(id: 11)
    @post12 = Post.where(id: 12)
    @post13 = Post.where(id: 13)
  end
end
