class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def index
    @posts = Posts.all
  end
  def self.search(query)
    Post.all.where("post LIKE ?", "%#{query}%")
  end


end
