class Post < ApplicationRecord
  def index
    @posts = Posts.all
  end
end
