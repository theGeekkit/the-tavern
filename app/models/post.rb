class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def index
    @posts = Posts.all
  end

end
