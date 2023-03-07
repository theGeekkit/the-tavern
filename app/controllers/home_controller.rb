class HomeController < ApplicationController
  before_action :set_results
  def index

  end
  def search
    # @users = User.search(params[:query])
    @posts = Post.search(params[:query])
    if @posts
      @results = @posts
    else
      @results = Post.all
    end
  end

  def set_results
    @results = Post.all
  end
end

