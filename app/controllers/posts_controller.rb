class PostsController < ApplicationController
  before_filter :find_post

  def index
    @is_event = params[:events].nil? ? false : true
    @posts = Post.where(is_event: @is_event).limit(5)
  end

  def show
  end

  private
  def find_post
    @post = Post.find(params[:id]) if params[:id]
  end
end
