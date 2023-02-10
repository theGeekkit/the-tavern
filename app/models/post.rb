class Post < ApplicationRecord
  belongs_to :user

  def index
    @posts = Posts.all
  end

end
