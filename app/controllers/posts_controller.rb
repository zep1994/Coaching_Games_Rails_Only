class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show 
    @post = Post.find(params[:id])
  end

  def new
    
  end

  def create 
    Post.create(time: params[:post][:time], cost: params[:post][:cost], coach: params[:post][:coach])
    redirect_to posts_path
  end 
end
