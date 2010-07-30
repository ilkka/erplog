class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
    if @post.nil?
      redirect_to posts_url
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to post_url(@post.id)
    else
      redirect_to new_post_url
    end
  end
end
